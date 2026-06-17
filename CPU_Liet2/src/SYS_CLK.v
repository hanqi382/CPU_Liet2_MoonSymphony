module SYS_CLK(
    input clk_in,
    input clk_modk,
    output High_CLK,
    output reg clk_out
);
    wire OSC_CLK;
    //wire High_CLK;
    reg [1:0] clk_mod;
    Gowin_OSC osc_inst(
        .oscout(OSC_CLK)
    );

    Gowin_rPLL HighClk(
        .clkin(clk_in),
        .clkout(High_CLK)
    );

    // 27MHz分频到5Hz需要分频约5,400,000倍
    // 2^22 = 4,194,304, 2^23 = 8,388,608
    // 我们使用23位计数器来实现约5.1Hz的输出
    reg [22:0] counter = 0;
    wire divided_clk;

    always @(posedge clk_in) begin
        counter <= counter + 1;
    end

    assign divided_clk = counter[22]; // 大约5.1Hz

    always @(*) begin
        if (clk_mod==0) begin
            clk_out<=clk_in;
        end else if (clk_mod==1) begin
            clk_out<=divided_clk;  // 5Hz（合适）
        end else if (clk_mod==2) begin
            clk_out<=OSC_CLK;
        end else if (clk_mod==3) begin
            clk_out<=High_CLK;
        end
    end
    always @(posedge clk_modk) begin
        clk_mod<=clk_mod+1;
    end
endmodule