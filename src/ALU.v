module ALU(
    input EN,
    input imm,
    input [3:0] Opcode,
    input [31:0] A,
    input [31:0] B,
    input [31:0] Immediate,
    output reg [31:0] Result
);

    reg [31:0] BD;
    always @(*) begin
        if (imm) begin
            BD = Immediate;
        end else begin
            BD = B;
        end
        if (!EN) begin
            Result = 32'b0;
        end else begin
            case (Opcode)
                4'd0: Result <= ~(A & BD);       // NAND (按位与非)
                4'd1: Result <= A | BD;         // OR (按位或)
                4'd2: Result <= A & BD;         // AND (按位与)
                4'd3: Result <= ~(A | BD);      // NOR (按位或非)
                4'd4: Result <= A + BD;         // ADD (加法)
                4'd5: Result <= A - BD;         // SUB (减法)
                4'd6: Result <= A ^ BD;         // XOR (按位异或)
                4'd7: Result <= A << BD[4:0];   // LSL (逻辑左移) - 使用B的低5位作为移位量
                4'd8: Result <= A >> BD[4:0];   // LSR (逻辑右移) - 使用B的低5位作为移位量
                4'd9: Result <= A >>> BD[4:0];  // ASR (算术右移) - 使用B的低5位作为移位量
                4'd10: begin
                    Result[0] <= A==BD;
                    Result[1] <= A<BD;
                    Result[2] <= ($signed(A)<$signed(BD));
                end
            endcase
        end
    end
endmodule