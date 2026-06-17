module RAM_controller(
    input clk,
    input rst,
    input RAM_en,
    input imm,
    input [31:0] Immediate,
    input [3:0] Opcode,
    input [31:0] addr_in,
    output reg [31:0] addr,
    input [31:0] data_in,
    output reg [31:0] data_out,
    input [31:0] RAM_out,
    output reg [31:0] RAM_in,
    output reg RAM_RE,
    output reg RAM_WE
);
    always @(*) begin
        // 【关键】全部输出先赋默认值，彻底消除锁存器
        addr      = 32'b0;
        RAM_in    = 32'b0;
        data_out  = 32'b0;
        RAM_RE    = 1'b0;
        RAM_WE    = 1'b0;

        if (RAM_en) begin
                case (Opcode)
                    // ========== LOAD 操作（读内存）==========
                    4'b0000: begin // load8
                        data_out = RAM_out[7:0];
                        RAM_RE = 1'b1;
                        RAM_WE = 1'b0;
                    end
                    4'b0001: begin // load16
                        data_out = RAM_out[15:0];
                        RAM_RE = 1'b1;
                        RAM_WE = 1'b0;
                    end
                    4'b0010: begin // load32
                        data_out = RAM_out[31:0];
                        RAM_RE = 1'b1;
                        RAM_WE = 1'b0;
                    end
                    4'b0011: begin // pload
                        data_out = RAM_out[31:0];
                        RAM_RE = 1'b1;
                        RAM_WE = 1'b0;
                    end

                    // ========== STORE 操作（写内存）==========
                    4'b0100: begin // store8
                        RAM_in = data_in[7:0];
                        RAM_RE = 1'b0;
                        RAM_WE = 1'b1;
                    end
                    4'b0101: begin // store16
                        RAM_in = data_in[15:0];
                        RAM_RE = 1'b0;
                        RAM_WE = 1'b1;
                    end
                    4'b0110: begin // store32
                        RAM_in = data_in[31:0];
                        RAM_RE = 1'b0;
                        RAM_WE = 1'b1;
                    end

                    default: begin
                        RAM_in = 32'b0;
                        data_out = 32'b0;
                        RAM_RE = 1'b0;
                        RAM_WE = 1'b0;
                    end
            endcase
        end

        // 地址选择逻辑
        if (imm) begin
            addr = Immediate;
        end else begin
            addr = addr_in;
        end
    end

endmodule