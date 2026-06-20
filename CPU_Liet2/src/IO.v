// F:\project\FPGA\CPU_Liet2\CPU_Liet2\src\IO.v
module IO(
    input        clk,
    input        rst,
    input        EN,
    input  [3:0] Opcode,

    // CPU接口
    input [31:0]immediate,
    input Is_Immedia,
    input  [31:0] OUT_CPU,        // CPU输出数据
    output reg [31:0] OUT_IO,      // CPU输出到IO
    input  [31:0] IN,             // 外部输入数据
    output reg [31:0] IN_CPU,      // 输入到CPU

    // UART物理接口
    input        uart_rx,
    output       uart_tx,

    // SPI物理接口（主模式）
    output reg [7:0]DIO_OUT,
    output    reg   DIO_OUT_EN,

    input Highclk,
    input        miso,            // SPI MISO
    output       mosi,            // SPI MOSI
    output       ss_n,            // SPI 片选
    output       sclk,             // SPI 时钟
    output       tx            // UART 发送

);

localparam SPI_CTRL_REG    = 3'b000;  // 控制寄存器
localparam SPI_STATUS_REG  = 3'b001;  // 状态寄存器
localparam SPI_TX_DATA_REG = 3'b010;  // 发送数据寄存器
localparam SPI_RX_DATA_REG = 3'b011;  // 接收数据寄存器

// SPI 初始化状态机
reg [1:0] spi_init_state;
localparam INIT_IDLE   = 2'b00;
localparam INIT_CONFIG = 2'b01;
localparam INIT_DONE   = 2'b10;

// UART FIFO接口信号
wire        rx_fifo_empty;
wire        rx_fifo_full;
wire [7:0]  rx_fifo_data;
reg         rx_fifo_read;

wire        tx_fifo_empty;
wire        tx_fifo_full;
reg  [7:0]  tx_fifo_data;
reg         tx_fifo_write;


reg txen;
reg  [7:0] txout;
// 状态寄存器
reg [7:0] uart_status;  // bit0: rx_empty, bit1: tx_full

// SPI接口信号
reg         spi_tx_en;          // SPI发送使能
reg  [2:0]  spi_waddr;          // SPI写地址
reg  [31:0] spi_wdata;          // SPI写数据
reg         spi_rx_en;          // SPI读使能
reg  [2:0]  spi_raddr;          // SPI读地址
wire [31:0] spi_rdata;          // SPI读数据
wire        spi_int;            // SPI中断

// SPI_MASTER_Top实例化
SPI_MASTER_Top spi(
    .I_CLK(clk),
    .I_RESETN(~rst),
    .I_TX_EN(spi_tx_en),
    .I_WADDR(spi_waddr),
    .I_WDATA(spi_wdata),
    .I_RX_EN(spi_rx_en),
    .I_RADDR(spi_raddr),
    .O_RDATA(spi_rdata),
    .O_SPI_INT(spi_int),
    .MISO_MASTER(miso),
    .MOSI_MASTER(mosi),
    .SS_N_MASTER(ss_n),
    .SCLK_MASTER(sclk),
    .MISO_SLAVE(),
    .MOSI_SLAVE(1'b0),
    .SS_N_SLAVE(1'b1),
    .SCLK_SLAVE(1'b0)
);

uart_top uart_inst(
    .clk(clk),
    .rst_n(~rst),
    .tx(tx),
    .tx_din(txout),
    .tx_wr_en(txen),
    .tx_full(tx_fifo_full)
);


// 主逻辑
always @(negedge clk or posedge rst) begin
    if (rst) begin
        txen <= 1'b0;
        OUT_IO <= 32'd0;
        IN_CPU <= 32'd0;
        rx_fifo_read <= 1'b0;
        tx_fifo_write <= 1'b0;
        tx_fifo_data <= 8'd0;
        uart_status <= 8'd0;
        spi_tx_en <= 1'b0;
        spi_rx_en <= 1'b0;
        spi_init_state <= INIT_IDLE;
    end else begin
        txen <= 1'b0;
        rx_fifo_read <= 1'b0;
        tx_fifo_write <= 1'b0;
        spi_tx_en <= 1'b0;
        spi_rx_en <= 1'b0;
        DIO_OUT_EN <= 1'b0;
        case (spi_init_state)
            INIT_IDLE: begin
                spi_init_state <= INIT_CONFIG;
            end

            INIT_CONFIG: begin
                spi_waddr <= SPI_CTRL_REG;
                spi_wdata <= 32'h00000001;  // 使能 SPI
                spi_tx_en <= 1'b1;
                spi_init_state <= INIT_DONE;
            end

            INIT_DONE: begin
                if (EN) begin
                    case (Opcode)
                        4'b0001: begin
                            OUT_IO <= OUT_CPU;
                        end

                        4'b0010: begin
                            IN_CPU <= IN;
                        end

                        4'b1000: begin  // DIO输出
                            //if(Is_Immedia) begin
                            //    DIO_OUT <= immediate[7:0];
                            //end else begin
                            //    DIO_OUT <= OUT_CPU;
                            //end
                            //DIO_OUT_EN <= 1'b1;
                            if (!tx_fifo_full) begin
                                tx_fifo_write <= 1'b1;
                                tx_fifo_data <= immediate[7:0];
                                txen <= 1'b1;
                            end else begin

                            end
                            if (Is_Immedia) begin
                                txout <= immediate[7:0];
                            end else begin
                                txout <= OUT_CPU[7:0];
                            end
                        end

                        4'b1001: begin  //
                            if (Is_Immedia) begin
                                txout <= immediate[7:0];
                            end else begin
                                txout <= OUT_CPU[7:0];
                            end
                        end

                        4'b1001: begin  //
                            spi_raddr <= SPI_RX_DATA_REG;
                            spi_rx_en <= 1'b1;
                            IN_CPU <= spi_rdata;
                        end

                        default: begin
                            DIO_OUT_EN <= 1'b0;
                        end
                    endcase
                end
            end

            default: begin
                spi_init_state <= INIT_IDLE;
                DIO_OUT_EN <= 1'b0;
                //txen <= 1'b0;
            end
        endcase
    end
end

// UART模块实例化（保持原有代码）
// ...

endmodule