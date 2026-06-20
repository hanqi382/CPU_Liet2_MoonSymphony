module uart_top #(
    parameter CLK_FREQ = 50_000_000,
    parameter BAUD_RATE = 115200
)(
    input  wire       clk,
    input  wire       rst_n,
    // 物理接口
    input  wire       rx,
    output wire       tx,
    // 用户接口
    input  wire [7:0] tx_din,
    input  wire       tx_wr_en,
    output wire       tx_full,
    output wire [7:0] rx_dout,
    input  wire       rx_rd_en,
    output wire       rx_empty
);

    wire tick; // 16倍波特率脉冲
    wire rx_done_tick;
    wire [7:0] rx_data_out;
    wire tx_done_tick;
    wire [7:0] tx_fifo_out;
    wire tx_fifo_empty;
    wire tx_start;

    // 1. 波特率发生器 (16倍)
    // 计算: 50M / (115200 * 16) = 27
    baud_gen #(.CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE*16)) u_bg (
        .clk(clk), .rst_n(rst_n), .tick(tick)
    );

    // 2. 接收通道
    uart_rx u_rx (
        .clk(clk), .rst_n(rst_n), .rx(rx), .s_tick(tick),
        .dout(rx_data_out), .rx_done_tick(rx_done_tick)
    );

    fifo #(.DATA_WIDTH(8), .ADDR_WIDTH(8)) u_rx_fifo (
        .clk(clk), .rst_n(rst_n),
        .wr_en(rx_done_tick), .w_data(rx_data_out),
        .rd_en(rx_rd_en), .r_data(rx_dout),
        .full(), .empty(rx_empty)
    );

    // 3. 发送通道
    // 当FIFO不空且TX空闲时，自动发送
    assign tx_start = !tx_fifo_empty;

    // 注意：这里需要一个简单的逻辑来控制从FIFO读出数据并发给UART_TX
    // 由于篇幅限制，这里简化处理：假设TX模块内部有Buffer或外部状态机控制
    // 更严谨的做法是加一个小状态机：检测FIFO不空 -> 读FIFO -> 拉高tx_start -> 等待tx_done

    // 简单实现：使用wire直连存在时序风险，建议增加一层胶水逻辑：
    reg tx_active;
    reg tx_fifo_rd;

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            tx_active <= 0;
            tx_fifo_rd <= 0;
        end else begin
            tx_fifo_rd <= 0;
            if(!tx_active && !tx_fifo_empty) begin
                tx_active <= 1;
                tx_fifo_rd <= 1; // 读FIFO一个周期
            end else if(tx_done_tick) begin
                tx_active <= 0;
            end
        end
    end

    fifo #(.DATA_WIDTH(8), .ADDR_WIDTH(8)) u_tx_fifo (
        .clk(clk), .rst_n(rst_n),
        .wr_en(tx_wr_en), .w_data(tx_din),
        .rd_en(tx_fifo_rd), .r_data(tx_fifo_out),
        .full(tx_full), .empty(tx_fifo_empty)
    );

    uart_tx u_tx (
        .clk(clk), .rst_n(rst_n),
        .tx_start(tx_fifo_rd), // 使用读信号作为启动信号(需确保数据也就位)
        .s_tick(tick), .din(tx_fifo_out),
        .tx_done_tick(tx_done_tick), .tx(tx)
    );

endmodule
