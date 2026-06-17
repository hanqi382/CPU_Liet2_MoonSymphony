module PC(
    input clk,
    input rst,
    input pc_jump_en,
    input [31:0] pc_in,
    output reg [25:0] pc_out
);
    //reg [31:0] pc_out;
    always @(negedge clk or negedge rst or posedge pc_jump_en) begin
        if (!rst) begin
            pc_out <= 25'b0;
        end else if (pc_jump_en==1'b1) begin
            if (~(clk&pc_jump_en)) begin
                //addr_pc[7:0] <= addr[7:0];
                pc_out<=pc_in[25:0];
            end
        end
        else begin
            pc_out <= pc_out+1'b1;
        end
    end
endmodule