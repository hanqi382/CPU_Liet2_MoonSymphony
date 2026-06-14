module CU(
    input [31:0]Instructio,
    output reg [1:0]Mode,
    output reg [3:0]Opcode,
    output reg [4:0] Destination,
    output reg [4:0] Argument_A,
    output reg [4:0] Argument_B,
    output reg Is_Immedia,
    output reg [15:0] Immediate
);
    always @(*) begin
        Mode <= Instructio[30:29];
        Opcode <= Instructio[27:24];         //操作码
        Destination <= Instructio[23:20];     //目标寄存器
        Argument_A <= Instructio[19:16];     //源寄存器A
        Argument_B <= Instructio[11:8];     //源寄存器B
        Is_Immedia <= Instructio[28];     //是否立即立即数
        Immediate <= Instructio[15:0];     //立即数
    end



endmodule