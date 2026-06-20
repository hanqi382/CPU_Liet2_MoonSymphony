module uart_tx (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       tx_start, // 发送使能
    input  wire       s_tick,   // 16倍波特率脉冲
    input  wire [7:0] din,
    output reg        tx_done_tick,
    output reg        tx
);

    // 状态定义
    localparam [1:0]
        IDLE  = 2'b00,
        START = 2'b01,
        DATA  = 2'b10,
        STOP  = 2'b11;

    reg [1:0] state, state_next;
    reg [3:0] s_cnt, s_cnt_next; // 16倍采样计数
    reg [2:0] n_cnt, n_cnt_next; // bit计数
    reg [7:0] b_reg, b_reg_next; // 移位寄存器
    reg       tx_reg, tx_next;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
            s_cnt <= 0;
            n_cnt <= 0;
            b_reg <= 0;
            tx_reg <= 1'b1; // 空闲时为高
            tx_done_tick <= 0;
        end else begin
            state <= state_next;
            s_cnt <= s_cnt_next;
            n_cnt <= n_cnt_next;
            b_reg <= b_reg_next;
            tx_reg <= tx_next;
            tx_done_tick <= (state == STOP && s_cnt == 15 && s_tick);
        end
    end

    always @* begin
        state_next = state;
        s_cnt_next = s_cnt;
        n_cnt_next = n_cnt;
        b_reg_next = b_reg;
        tx_next = tx_reg;

        case (state)
            IDLE: begin
                tx_next = 1'b1;
                if (tx_start) begin
                    state_next = START;
                    s_cnt_next = 0;
                    b_reg_next = din;
                end
            end
            
            START: begin
                tx_next = 1'b0; // 起始位拉低
                if (s_tick) begin
                    if (s_cnt == 15) begin
                        state_next = DATA;
                        s_cnt_next = 0;
                        n_cnt_next = 0;
                    end else begin
                        s_cnt_next = s_cnt + 1;
                    end
                end
            end
            
            DATA: begin
                tx_next = b_reg[0]; // LSB先发
                if (s_tick) begin
                    if (s_cnt == 15) begin
                        s_cnt_next = 0;
                        b_reg_next = b_reg >> 1;
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
                tx_next = 1'b1; // 停止位拉高
                if (s_tick) begin
                    if (s_cnt == 15) begin
                        state_next = IDLE;
                    end else begin
                        s_cnt_next = s_cnt + 1;
                    end
                end
            end
        endcase
    end

endmodule


