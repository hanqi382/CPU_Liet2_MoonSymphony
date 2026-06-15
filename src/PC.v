module PC(
    input clk,
    input rst,
    input pc_jump_en,
    input [31:0] pc_in,
    output reg [25:0] pc_out
);
    //reg [31:0] pc_out;
    always @(posedge clk or negedge rst or posedge pc_jump_en) begin
        if (!rst) begin
            pc_out <= 25'b0;
        end else if (pc_jump_en==1'b1) begin
            pc_out <= pc_in;
        end else begin
            pc_out <= pc_out+1'b1;
        end
    end
endmodule