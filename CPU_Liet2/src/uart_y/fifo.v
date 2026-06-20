module fifo #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 4 // 深度 = 2^4 = 16
)(
    input  wire                  clk,
    input  wire                  rst_n,
    input  wire                  wr_en,
    input  wire                  rd_en,
    input  wire [DATA_WIDTH-1:0] w_data,
    output wire [DATA_WIDTH-1:0] r_data,
    output wire                  full,
    output wire                  empty
);
    reg [15:0] mem [7:0];
    reg [4:0] w_ptr, r_ptr;
    reg [ADDR_WIDTH:0]   count; // 计数器需多一位以区分空/满

    assign full  = (count == (1 << ADDR_WIDTH));
    assign empty = (count == 0);
    assign r_data = mem[r_ptr];

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            w_ptr <= 0; r_ptr <= 0; count <= 0;
        end else begin
            // 写入
            if (wr_en && !full) begin
                mem[w_ptr] <= w_data;
                w_ptr <= w_ptr + 1;
            end
            // 读取
            if (rd_en && !empty) begin
                r_ptr <= r_ptr + 1;
            end
            // 计数维护
            case ({wr_en && !full, rd_en && !empty})
                2'b10: count <= count + 1;
                2'b01: count <= count - 1;
                default: count <= count;
            endcase
        end
    end
endmodule