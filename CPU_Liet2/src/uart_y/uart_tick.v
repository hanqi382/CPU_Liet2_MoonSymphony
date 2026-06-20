module baud_gen #(
    parameter CLK_FREQ  = 50_000_000, // 系统时钟
    parameter BAUD_RATE = 115200      // 目标波特率
)(
    input  wire clk,
    input  wire rst_n,
    output reg  tick // 波特率倍频脉冲 (通常用于过采样)
);

    // 计算分频系数
    // 若需要16倍过采样（常见于RX），则 M = CLK / (BAUD * 16)
    // 若仅需1倍（用于TX），则 M = CLK / BAUD
    // 这里演示通用的1倍波特率脉冲生成
    localparam CNT_MAX = CLK_FREQ / BAUD_RATE;

    reg [15:0] cnt;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt  <= 0;
            tick <= 1'b0;
        end else begin
            if (cnt == CNT_MAX - 1) begin
                cnt  <= 0;
                tick <= 1'b1;
            end else begin
                cnt  <= cnt + 1'b1;
                tick <= 1'b0;
            end
        end
    end
endmodule
