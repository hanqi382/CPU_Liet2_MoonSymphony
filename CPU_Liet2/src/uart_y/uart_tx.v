
module uart_tx (
    input           clk,              // 串口发送时钟
    input           rst_n,            // 串口复位，低电平有效
    input   [7:0]   din,          // 输入的 8 位数据
    input           tx_start,           // 串口发送使能信号
    output reg      tx_done_tick,       // 发送就绪信号
    output reg      tx          // 串口发送数据
);

// 参数定义
parameter   CLK_FREQ = 26'd50_000_000,  // 系统时钟频率 50MHz
            UART_BPS = 17'd115200;      // UART 波特率 115200

parameter   START_BIT = 1'b0;           // 起始位
parameter   END_BIT   = 1'b1;           // 停止位

localparam  BAUD_CNT_MAX = CLK_FREQ / UART_BPS;


// reg define
reg [12:0]  baud_cnt;                    // 波特率计数器
reg [3:0]   data_bit_count;              // 数据位计数器
reg         transmission_ready;           // 发送工作使能信号

// 发送工作使能信号逻辑
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        transmission_ready <= 1'b0;
    else if (tx_start)
        transmission_ready <= 1'b1; // 发送使能时，设置为有效
    else if ((baud_cnt == 13'd1)  && (data_bit_count == 4'd9))
        transmission_ready <= 1'b0; // 发送完成后，清除使能信号
    else
        transmission_ready <= transmission_ready;
end

// 波特率计数器
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        baud_cnt <= 13'b0;
    else if ( (baud_cnt == BAUD_CNT_MAX - 1'd1))
        baud_cnt <= 13'b0;           // 发送无效或计数到达最大值时清零
    else if (transmission_ready)
        baud_cnt <= baud_cnt + 1'b1; // 计数器加一
    else
        baud_cnt <= baud_cnt;
end


always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        data_bit_count <= 4'b0;
    else  if(baud_cnt == 13'd1) begin
        if (transmission_ready)
            data_bit_count <= data_bit_count + 1'b1;  //每波特率计数器的第一个时钟周期，数据位加一
        else if(data_bit_count == 4'd9)
            data_bit_count <= 4'd0;                    //发送完时，数据位清零
    end
    else
        data_bit_count <= data_bit_count;
end

// UART 数据发送逻辑
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        tx <= 1'b1; // 空闲状态为高电平
    else if (baud_cnt == 13'd1  ) begin
        case (data_bit_count)
            4'd0: tx <= START_BIT;             // 起始位
            4'd1: tx <= din[0];         // 数据最低位
            4'd2: tx <= din[1];
            4'd3: tx <= din[2];
            4'd4: tx <= din[3];
            4'd5: tx <= din[4];
            4'd6: tx <= din[5];
            4'd7: tx <= din[6];
            4'd8: tx <= din[7];          // 数据最高位
            4'd9: tx <= END_BIT;                // 停止位
            default: tx <= 1'b1;                // 默认状态
        endcase
    end
end


// 发送就绪信号逻辑
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        tx_done_tick <= 1'b0; // 初始化为未就绪
    else if ( baud_cnt ==  1'd1  && data_bit_count == 4'd9)
        tx_done_tick <= 1'b1; // 发送完成，设置发送就绪信号为有效
    else
        tx_done_tick <= 1'b0; // 发送中
end

endmodule