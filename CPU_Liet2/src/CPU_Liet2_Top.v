module CPU_Liet2_Top(
    input clk_in,
    input clk_modk,
    input rst,
    //input [0:2] clk_mod,
    output reg clk_out,
    output [7:0] OUT
);
    wire [31:0] INSTR;
    //指令
    wire sys_clk;
    //跳转信号线
    wire jump;
    wire [31:0] jump_addr;
    //
    wire [2:0] Mode;
    wire [3:0]Opcode;
    wire [4:0] Destination;
    wire [4:0] Argument_A;
    wire [4:0] Argument_B;
    wire Is_Immedia;
    wire [15:0] Immediate;

    wire [31:0] WR_BUS_RAM;
    wire [31:0] WR_BUS_ALU;
    wire [31:0] WR_BUS;
    wire [31:0] A_DBUS;
    wire [31:0] B_DBUS;
    wire [31:0] J_wr_data_inst;
    wire [31:0] RAM_ADDR;
    wire [31:0] RAM_OUT_DATA;
    wire [31:0] RAM_IN_DATA;
    wire RAM_RE;
    wire RAM_WE;
    wire High_CLK;
    reg IO_MODE;
    reg ALU_MODE;
    reg JUMP_MODE;
    reg RAM_MODE;
    reg CPU_Mode_cfg;
    //译码信号



    wire [25:0] PC_ADDR;

    //
    SYS_CLK clk_inst(
        .clk_modk(clk_modk),
        .High_CLK(High_CLK),
        .clk_in(clk_in),
        .clk_out(sys_clk)
    );
    //系统时钟

    //
    PC PC_Liet2_0(
        .clk(sys_clk),
        .rst(~rst),
        .pc_out(PC_ADDR),
        .pc_jump_en(jump),
        .pc_in(jump_addr)
    );
    assign OUT[7:0]=~PC_ADDR[7:0];
    //计数器

    //
        CU CU_inst(
            .Instructio(INSTR),
            .Mode(Mode),
            .Opcode(Opcode),
            .Destination(Destination),
            .Argument_A(Argument_A),
            .Argument_B(Argument_B),
            .Is_Immedia(Is_Immedia),
            .Immediate(Immediate)
        );
    //CU译码

    //

	Gowin_DP DP_inst(
	        // A口：只读指令端口
        .clka(sys_clk),
        .ocea(1'b1),
        .cea(1'b1),
        .reseta(1'b0),        // 高电平复位，直接接rst
        .wrea(1'b0),         // 强制写使能为0，纯读模式
        .ada(PC_ADDR[2:0]),  // PC地址线
        .dina(32'b0),        // 写端口没用，接0即可
        .douta(INSTR),       // 指令输出

	        // B口：全部接0，完全不用
        .clkb(~sys_clk),
        .oceb(1'b1),
        .ceb(1'b1),
        .resetb(1'b0),
        .wreb(RAM_WE),
        .adb(RAM_ADDR[31:0]),
        .dinb(RAM_IN_DATA),
        .doutb(WR_BUS_RAM)
    );


    /*Gowin_pROM pROM_inst(
        .oce(1'b1),
        .clk(sys_clk),
        .reset(1'b0),
        .dout(INSTR),
        .ce(1'b1),
        .ad(PC_ADDR[10:0])
    );*/
    //RAM
    always @(*) begin
        case (Mode)
            3'b000: begin
                IO_MODE = 1'b1;
                ALU_MODE = 1'b0;
                JUMP_MODE = 1'b0;
                RAM_MODE = 1'b0;
                CPU_Mode_cfg = 1'b0;
            end
            3'b001: begin
                IO_MODE = 1'b0;
                ALU_MODE = 1'b1;
                JUMP_MODE = 1'b0;
                RAM_MODE = 1'b0;
                CPU_Mode_cfg = 1'b0;
            end
            3'b010: begin
                IO_MODE = 1'b0;
                ALU_MODE = 1'b0;
                JUMP_MODE = 1'b1;
                RAM_MODE = 1'b0;
                CPU_Mode_cfg = 1'b0;
            end
            3'b011: begin
                IO_MODE = 1'b0;
                ALU_MODE = 1'b0;
                JUMP_MODE = 1'b0;
                RAM_MODE = 1'b1;
                CPU_Mode_cfg = 1'b0;
            end
            3'b100: begin
                IO_MODE = 1'b0;
                ALU_MODE = 1'b0;
                JUMP_MODE = 1'b0;
                RAM_MODE = 1'b0;
                CPU_Mode_cfg = 1'b1;
            end
            default: begin
                IO_MODE = 1'b0;
                ALU_MODE = 1'b0;
                JUMP_MODE = 1'b0;
                RAM_MODE = 1'b0;
                CPU_Mode_cfg = 1'b0;
            end
        endcase
    end

    //
    ALU ALU_inst(
        .EN(ALU_MODE),
        .imm(Is_Immedia),
        .Opcode(Opcode),
        .A(A_DBUS),
        .B(B_DBUS),
        .Immediate(Immediate),
        .Result(WR_BUS_ALU)
    );
    //ALU

    RegFiles RegFiles_inst(
        .clk(sys_clk),
        .rst(rst),
        .Write_EN(1'b1),
        .Write_Address(Destination),
        .Write_Data(WR_BUS),
        .RDA_EN(1'b1),
        .Address_A(Argument_A),
        .RDA(A_DBUS),
        .RDB_EN(1'b1),
        .Address_B(Argument_B),
        .RDB(B_DBUS),
        .wr_data(J_wr_data_inst)
        );

    cond cond_inst(
        .Mode(Mode),
        .jump_en(JUMP_MODE),
        .Flags(A_DBUS),
        .DATA_B(B_DBUS),
        .Condition(Opcode),
        .jump(jump),
        .wr_data(J_wr_data_inst),
        .jump_addr(jump_addr)
    );

        RAM_controller RAM_inst(
            .clk(sys_clk),
            .rst(rst),
            .RAM_en(RAM_MODE),
            .Opcode(Opcode),

            .addr(RAM_ADDR),
            .addr_in(B_DBUS),
            .imm(Is_Immedia),
            .Immediate(Immediate),

            .data_in(A_DBUS),
            .data_out(RAM_OUT_DATA),
            .RAM_out(WR_BUS_RAM),
            .RAM_in(RAM_IN_DATA),
            .RAM_RE(RAM_RE),
            .RAM_WE(RAM_WE)
        );


WR_BUS WR_BUS_inst(
    .mux_1(RAM_RE),
    .ALU_Result(WR_BUS_ALU),
    .RAM_out(RAM_OUT_DATA),
    .wr_out(WR_BUS)
    );



endmodule