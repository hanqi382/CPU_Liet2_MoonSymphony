module RegFiles(
    input clk,
    input rst,

    input Write_EN,
    input [4:0] Write_Address,
    input [31:0] Write_Data,//写入数据

    input RDA_EN,
    input [4:0] Address_A,//读寄存器A地址
    output reg [31:0] RDA,//读寄存器A数据
    
    input RDB_EN,
    input [4:0] Address_B,//读寄存器B地址
    output reg [31:0] RDB//读寄存器B数据
);

    // 定义32个32位寄存器
    reg [31:0] registers [0:31];
    
    always @(negedge clk) begin
        if (rst) begin
            registers[0] <= 32'b0;
            registers[1] <= 32'b0;
            registers[2] <= 32'b0;
            registers[4] <= 32'b0;
            registers[5] <= 32'b0;
            registers[6] <= 32'b0;
            registers[7] <= 32'b0;
            registers[8] <= 32'b0;
            registers[9] <= 32'b0;
            registers[10] <= 32'b0;
            registers[11] <= 32'b0;
            registers[12] <= 32'b0;
            registers[13] <= 32'b0;
            registers[14] <= 32'b0;
            registers[15] <= 32'b0;
            registers[16] <= 32'b0;
            registers[17] <= 32'b0;
            registers[18] <= 32'b0;
            registers[19] <= 32'b0;
            registers[20] <= 32'b0;
            registers[21] <= 32'b0;
            registers[22] <= 32'b0;
            registers[23] <= 32'b0;
            registers[24] <= 32'b0;
            registers[25] <= 32'b0;
            registers[26] <= 32'b0;
            registers[27] <= 32'b0;
            registers[28] <= 32'b0;
            registers[29] <= 32'b0;
            registers[30] <= 32'b0;
            registers[31] <= 32'b0;
        end
        else begin
            if (Write_EN) begin
                if (Write_Address != 0) begin
                    registers[Write_Address] <= Write_Data;
                end
                else begin
                    registers[0] <= 0;
                end
            end
        end
    end


    always @(*) begin
        if (RDA_EN) begin
            RDA <= registers[Address_A];
        end
        if (RDB_EN) begin
            RDB <= registers[Address_B];
        end
    end
    
endmodule



