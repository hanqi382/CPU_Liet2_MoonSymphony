module uart_rx (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       rx,       // 外部串口RX引脚
    input  wire       s_tick,   // 16倍波特率采样脉冲
    output reg  [7:0] dout,
    output reg        rx_done_tick
);

    // 状态定义
    localparam [1:0]
        IDLE  = 2'b00,
        START = 2'b01,
        DATA  = 2'b10,
        STOP  = 2'b11;

    reg [1:0] state, state_next;
    reg [3:0] s_cnt, s_cnt_next; // 采样计数器 (0-15)
    reg [2:0] n_cnt, n_cnt_next; // 数据位计数器 (0-7)
    reg [7:0] b_reg, b_reg_next; // 数据移位寄存器
    reg       rx_sync1, rx_sync2;

    // 1. 双触发器同步
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rx_sync1 <= 1'b1;
            rx_sync2 <= 1'b1;
        end else begin
            rx_sync1 <= rx;
            rx_sync2 <= rx_sync1;
        end
    end

    // 2. FSM状态转移与数据路径
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
            s_cnt <= 0;
            n_cnt <= 0;
            b_reg <= 0;
            dout  <= 0;
            rx_done_tick <= 0;
        end else begin
            state <= state_next;
            s_cnt <= s_cnt_next;
            n_cnt <= n_cnt_next;
            b_reg <= b_reg_next;
            rx_done_tick <= (state == STOP && s_cnt == 15 && s_tick); // 完成标志
            if (state == STOP && s_cnt == 15 && s_tick)
                dout <= b_reg; // 输出数据
        end
    end

    // 3. 下一状态组合逻辑
    always @* begin
        state_next = state;
        s_cnt_next = s_cnt;
        n_cnt_next = n_cnt;
        b_reg_next = b_reg;

        case (state)
            IDLE: begin
                if (!rx_sync2) begin // 检测到下降沿
                    state_next = START;
                    s_cnt_next = 0;
                end
            end

            START: begin
                if (s_tick) begin
                    if (s_cnt == 7) begin // 走到中心点
                        state_next = DATA;
                        s_cnt_next = 0;
                        n_cnt_next = 0;
                    end else begin
                        s_cnt_next = s_cnt + 1;
                    end
                end
            end

            DATA: begin
                if (s_tick) begin
                    if (s_cnt == 15) begin // 走到数据位中心
                        s_cnt_next = 0;
                        b_reg_next = {rx_sync2, b_reg[7:1]}; // LSB first
                        if (n_cnt == 7)
                            state_next = STOP;
                        else
                            n_cnt_next = n_cnt + 1;
                    end else begin
                        s_cnt_next = s_cnt + 1;
                    end
                end
            end

            STOP: begin
                if (s_tick) begin
                    if (s_cnt == 15) begin // 等待停止位结束
                        state_next = IDLE;
                    end else begin
                        s_cnt_next = s_cnt + 1;
                    end
                end
            end
        endcase
    end
endmodule
