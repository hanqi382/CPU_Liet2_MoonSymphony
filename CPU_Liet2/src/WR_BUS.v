module WR_BUS(
    input mux_1,
    input [31:0] ALU_Result,
    input [31:0] RAM_out,
    output reg [31:0] wr_out
);

    always @(*) begin
        if (mux_1) begin
            wr_out <= RAM_out;
        end else begin
            wr_out <= ALU_Result;
        end
    end
endmodule