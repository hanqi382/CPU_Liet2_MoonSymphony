module cond(
    input clk,
    input  Mode,
    input  jump_en,
    input [31:0] Flags,
    input [31:0] DATA_B,
    input [31:0] wr_data,
    input [3:0] Condition,
    input  imm,
    input [31:0] Immediate,
    output reg jump,
    output reg [31:0] jump_addr

);
    always @(*) begin
        if (Mode==1) begin
            jump_addr <= wr_data;
        end else begin
            if (imm==1) begin
                jump_addr <= Immediate;
            end else begin
                jump_addr <= wr_data;
            end
        end
        if (jump_en==1) begin
            if (Mode==0) begin
                if (Condition[3] == 1) begin
                    jump <= ~(Flags[0]&Condition[0]|Flags[1]&Condition[1]|Flags[2]&Condition[2]);
                end else begin
                    jump <= Flags[0]&Condition[0]|Flags[1]&Condition[1]|Flags[2]&Condition[2];
                end
            end else begin
                case (Condition)
                    4'b0000: jump <= Flags==DATA_B;
                    4'b0001: jump <= Flags!=DATA_B;
                    4'b0010: jump <= Flags<DATA_B;
                    4'b0011: jump <= Flags<=DATA_B;
                    4'b0100: jump <= Flags>DATA_B;
                    4'b0101: jump <= Flags>=DATA_B;
                endcase
            end
        end else begin
            jump <= 0;
        end
    end


endmodule