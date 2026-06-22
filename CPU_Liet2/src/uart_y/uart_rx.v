
module uart_rx(
    input               clk            , // 系统时钟
    input               rst_n          , // 系统复位，低有效
    input               rx       ,  // UART 接收端口
    output reg          rx_done_tick   ,         // UART 接收完成信号
    output reg  [7:0]   dout             // UART 接收到的数据
);

// 参数定义
parameter  CLK_FREQ = 26'd50_000_000;  // 系统时钟频率 50MHz
parameter  UART_BPS = 17'd115200;      // UART 波特率 115200
localparam BAUD_CNT_MAX = CLK_FREQ / UART_BPS; // 波特率计数最大值


// 寄存器定义
reg rx_flag;

reg rxd_d1, rxd_d2, rxd_d3;                 // 数据同步寄存器
reg work_en;                               // 接收数据工作使能信号
reg bit_flag;                              // 中间采样标志
reg [12:0] baud_cnt;                       // 波特率计数器
reg [3:0] bit_cnt;                         // 数据位计数器
reg [7:0] rx_data_buf;                     // 接收数据
wire start_en;
//捕获接收端口下降沿（即起始位的下降沿），得到一个时钟周期的脉冲信号，表示接收开始
assign start_en = ~rxd_d2 && rxd_d3;

// 数据同步寄存器
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rxd_d1 <= 1'b1; // 默认高电平
        rxd_d2 <= 1'b1;
        rxd_d3 <= 1'b1;
    end
    else begin
        rxd_d1 <= rx;   // 接收端口数据同步到寄存器
        rxd_d2 <= rxd_d1;       // 上一个寄存器的数据传递到下一个寄存器
        rxd_d3 <= rxd_d2;       // 将接收到的数据同步到三级寄存器
    end
end


// 接收数据工作使能信号
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        work_en <= 1'b0;
    else if (start_en)
        work_en <= 1'b1;         // 起始位的下降沿触发时，启动接收工作
    else if (((bit_cnt == 4'd8) && bit_flag) || rx_done_tick)
        work_en <= 1'b0;        // 数据接收完成后，停止接收工作
    else
        work_en <= work_en;
end

// 波特率计数器
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        baud_cnt <= 13'b0;
    else if (work_en == 1'b0 || (baud_cnt == BAUD_CNT_MAX - 1))
        baud_cnt <= 13'b0;         // 不工作时或者计数器达到最大计数值时重置
    else if (work_en)
        baud_cnt <= baud_cnt + 1'b1;
    else
        baud_cnt <= baud_cnt;
end


// 中间采样标志
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        bit_flag <= 1'b0;
    else if (baud_cnt == BAUD_CNT_MAX / 2 - 1)
        bit_flag <= 1'b1;       // 当计数器达到半波特率周期时，设置采样标志为有效，保证稳态
    else
        bit_flag <= 1'b0;       // 在其他情况下，标志为无效
end

// 数据位计数器
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        bit_cnt <= 4'b0;
    else if (bit_flag)begin
        if(bit_cnt == 4'd8)       // 接收到 8 位数据后，重置计数器
            bit_cnt <= 4'b0;
        else
            bit_cnt <= bit_cnt + 4'b1; // 每次采样一个数据位，计数器加一
   end
   else
        bit_cnt <= bit_cnt;
end

// 接收数据移位
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        rx_data_buf <= 8'b0;
    else if (bit_flag) begin
         case (bit_cnt)
            4'd1: rx_data_buf[0] <= rxd_d3; // 接收到的每一位数据
            4'd2: rx_data_buf[1] <= rxd_d3;
            4'd3: rx_data_buf[2] <= rxd_d3;
            4'd4: rx_data_buf[3] <= rxd_d3;
            4'd5: rx_data_buf[4] <= rxd_d3;
            4'd6: rx_data_buf[5] <= rxd_d3;
            4'd7: rx_data_buf[6] <= rxd_d3;
            4'd8: rx_data_buf[7] <= rxd_d3;
            default : rx_data_buf <= 8'b0;  // 默认状态
        endcase
    end
end

// 数据接收完成标志
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        rx_flag <= 1'b0;
    else if (bit_cnt == 4'd8 && bit_flag)
        rx_flag <= 1'b1;            // 接收到 8 位数据时，设置完成标志
    else
        rx_flag <= 1'b0;
end

// 输出完整的 8 位有效数据,当数据接收完成后，将接收的数据从缓存传递到输出端
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        dout <= 8'b0;
    else if (rx_flag)
        dout <= rx_data_buf;      // 完成接收时，将接收到的数据输出

end
// 接收完成信号：当数据接收完成时，设置接收完成标志
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        rx_done_tick <= 1'b0;
    else
        rx_done_tick <= rx_flag;         // 接收完成时，设置为有效
end

endmodule