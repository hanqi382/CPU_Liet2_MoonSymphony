// F:\project\FPGA\CPU_Liet2\CPU_Liet2\src\uart\uart_fifo.v
module uart_fifo(
    input        clk,
    input        rst,

    // UART物理接口
    input        uart_rx,
    output       uart_tx,

    // 接收FIFO接口
    output       rx_fifo_empty,
    output       rx_fifo_full,
    output [7:0] rx_fifo_data,
    input        rx_fifo_read,

    // 发送FIFO接口
    output       tx_fifo_empty,
    output       tx_fifo_full,
    input  [7:0] tx_fifo_data,
    input        tx_fifo_write
);

// 波特率设置 (27MHz / 115200 ≈ 15)
`define BAUD_115200 16'd15

// UART TX/RX信号
wire        tx_wready;
wire        tx_wvalid;
wire [7:0]  tx_wdata;
wire        rx_rvalid;
wire [7:0]  rx_rdata;
wire        rx_rready;

// UART发送模块
uart_tx tx_inst (
    .clk        (clk),
    .rst        (rst),
    .wdata_i    (tx_wdata),
    .wvalid_i   (tx_wvalid),
    .parity_i   (2'd1),      // 奇校验
    .baud_i     (`BAUD_115200),
    .wready_o   (tx_wready),
    .tx_o       (uart_tx)
);

// UART接收模块
uart_rx rx_inst (
    .clk        (clk),
    .rst        (rst),
    .rx_i       (uart_rx),
    .parity_i   (2'd1),      // 奇校验
    .baud_i     (`BAUD_115200),
    .rready_i   (rx_rready),
    .rvalid_o   (rx_rvalid),
    .rdata_o    (rx_rdata)
);

// 接收FIFO (深度16)
fifo #(
    .WIDTH(8),
    .DEPTH(16)
) rx_fifo_inst (
    .clk        (clk),
    .rst        (rst),
    .wr_en      (rx_rvalid),
    .wr_data    (rx_rdata),
    .rd_en      (rx_fifo_read),
    .rd_data    (rx_fifo_data),
    .empty      (rx_fifo_empty),
    .full       (rx_fifo_full)
);

// 发送FIFO (深度16)
fifo #(
    .WIDTH(8),
    .DEPTH(16)
) tx_fifo_inst (
    .clk        (clk),
    .rst        (rst),
    .wr_en      (tx_fifo_write),
    .wr_data    (tx_fifo_data),
    .rd_en      (tx_wready),
    .rd_data    (tx_wdata),
    .empty      (tx_fifo_empty),
    .full       (tx_fifo_full)
);

// 发送FIFO读取控制
assign tx_wvalid = !tx_fifo_empty;
assign rx_rready = !rx_fifo_full;

endmodule

// FIFO模块
module fifo #(
    parameter WIDTH = 8,
    parameter DEPTH = 16
)(
    input               clk,
    input               rst,
    input               wr_en,
    input  [WIDTH-1:0]  wr_data,
    input               rd_en,
    output [WIDTH-1:0]  rd_data,
    output              empty,
    output              full
);

reg [WIDTH-1:0] mem [DEPTH-1:0];
reg [3:0] wr_ptr;
reg [3:0] rd_ptr;
reg [4:0] count;

assign empty = (count == 0);
assign full  = (count == DEPTH);
assign rd_data = mem[rd_ptr];

always @(posedge clk or posedge rst) begin
    if (rst) begin
        wr_ptr <= 4'd0;
        rd_ptr <= 4'd0;
        count <= 5'd0;
    end else begin
        if (wr_en && !full) begin
            mem[wr_ptr] <= wr_data;
            wr_ptr <= wr_ptr + 1;
            count <= count + 1;
        end
        if (rd_en && !empty) begin
            rd_ptr <= rd_ptr + 1;
            count <= count - 1;
        end
    end
end

endmodule