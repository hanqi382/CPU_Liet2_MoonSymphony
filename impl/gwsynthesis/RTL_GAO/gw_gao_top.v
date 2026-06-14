module gw_gao(
    clk_in,
    \clk_inst/clk_mod[1] ,
    \clk_inst/clk_mod[0] ,
    \PC_Liet2_0/pc_out[25] ,
    \PC_Liet2_0/pc_out[24] ,
    \PC_Liet2_0/pc_out[23] ,
    \PC_Liet2_0/pc_out[22] ,
    \PC_Liet2_0/pc_out[21] ,
    \PC_Liet2_0/pc_out[20] ,
    \PC_Liet2_0/pc_out[19] ,
    \PC_Liet2_0/pc_out[18] ,
    \PC_Liet2_0/pc_out[17] ,
    \PC_Liet2_0/pc_out[16] ,
    \PC_Liet2_0/pc_out[15] ,
    \PC_Liet2_0/pc_out[14] ,
    \PC_Liet2_0/pc_out[13] ,
    \PC_Liet2_0/pc_out[12] ,
    \PC_Liet2_0/pc_out[11] ,
    \PC_Liet2_0/pc_out[10] ,
    \PC_Liet2_0/pc_out[9] ,
    \PC_Liet2_0/pc_out[8] ,
    \PC_Liet2_0/pc_out[7] ,
    \PC_Liet2_0/pc_out[6] ,
    \PC_Liet2_0/pc_out[5] ,
    \PC_Liet2_0/pc_out[4] ,
    \PC_Liet2_0/pc_out[3] ,
    \PC_Liet2_0/pc_out[2] ,
    \PC_Liet2_0/pc_out[1] ,
    \PC_Liet2_0/pc_out[0] ,
    \Mode[1] ,
    \Mode[0] ,
    \Opcode[3] ,
    \Opcode[2] ,
    \Opcode[1] ,
    \Opcode[0] ,
    \Destination[4] ,
    \Destination[3] ,
    \Destination[2] ,
    \Destination[1] ,
    \Destination[0] ,
    \Argument_A[4] ,
    \Argument_A[3] ,
    \Argument_A[2] ,
    \Argument_A[1] ,
    \Argument_A[0] ,
    \Argument_B[4] ,
    \Argument_B[3] ,
    \Argument_B[2] ,
    \Argument_B[1] ,
    \Argument_B[0] ,
    Is_Immedia,
    \Immediate[15] ,
    \Immediate[14] ,
    \Immediate[13] ,
    \Immediate[12] ,
    \Immediate[11] ,
    \Immediate[10] ,
    \Immediate[9] ,
    \Immediate[8] ,
    \Immediate[7] ,
    \Immediate[6] ,
    \Immediate[5] ,
    \Immediate[4] ,
    \Immediate[3] ,
    \Immediate[2] ,
    \Immediate[1] ,
    \Immediate[0] ,
    \INSTR[31] ,
    \INSTR[30] ,
    \INSTR[29] ,
    \INSTR[28] ,
    \INSTR[27] ,
    \INSTR[26] ,
    \INSTR[25] ,
    \INSTR[24] ,
    \INSTR[23] ,
    \INSTR[22] ,
    \INSTR[21] ,
    \INSTR[20] ,
    \INSTR[19] ,
    \INSTR[18] ,
    \INSTR[17] ,
    \INSTR[16] ,
    \INSTR[15] ,
    \INSTR[14] ,
    \INSTR[13] ,
    \INSTR[12] ,
    \INSTR[11] ,
    \INSTR[10] ,
    \INSTR[9] ,
    \INSTR[8] ,
    \INSTR[7] ,
    \INSTR[6] ,
    \INSTR[5] ,
    \INSTR[4] ,
    \INSTR[3] ,
    \INSTR[2] ,
    \INSTR[1] ,
    \INSTR[0] ,
    \RegFiles_inst/registers[0][31] ,
    \RegFiles_inst/registers[0][30] ,
    \RegFiles_inst/registers[0][29] ,
    \RegFiles_inst/registers[0][28] ,
    \RegFiles_inst/registers[0][27] ,
    \RegFiles_inst/registers[0][26] ,
    \RegFiles_inst/registers[0][25] ,
    \RegFiles_inst/registers[0][24] ,
    \RegFiles_inst/registers[0][23] ,
    \RegFiles_inst/registers[0][22] ,
    \RegFiles_inst/registers[0][21] ,
    \RegFiles_inst/registers[0][20] ,
    \RegFiles_inst/registers[0][19] ,
    \RegFiles_inst/registers[0][18] ,
    \RegFiles_inst/registers[0][17] ,
    \RegFiles_inst/registers[0][16] ,
    \RegFiles_inst/registers[0][15] ,
    \RegFiles_inst/registers[0][14] ,
    \RegFiles_inst/registers[0][13] ,
    \RegFiles_inst/registers[0][12] ,
    \RegFiles_inst/registers[0][11] ,
    \RegFiles_inst/registers[0][10] ,
    \RegFiles_inst/registers[0][9] ,
    \RegFiles_inst/registers[0][8] ,
    \RegFiles_inst/registers[0][7] ,
    \RegFiles_inst/registers[0][6] ,
    \RegFiles_inst/registers[0][5] ,
    \RegFiles_inst/registers[0][4] ,
    \RegFiles_inst/registers[0][3] ,
    \RegFiles_inst/registers[0][2] ,
    \RegFiles_inst/registers[0][1] ,
    \RegFiles_inst/registers[0][0] ,
    \RegFiles_inst/registers[1][31] ,
    \RegFiles_inst/registers[1][30] ,
    \RegFiles_inst/registers[1][29] ,
    \RegFiles_inst/registers[1][28] ,
    \RegFiles_inst/registers[1][27] ,
    \RegFiles_inst/registers[1][26] ,
    \RegFiles_inst/registers[1][25] ,
    \RegFiles_inst/registers[1][24] ,
    \RegFiles_inst/registers[1][23] ,
    \RegFiles_inst/registers[1][22] ,
    \RegFiles_inst/registers[1][21] ,
    \RegFiles_inst/registers[1][20] ,
    \RegFiles_inst/registers[1][19] ,
    \RegFiles_inst/registers[1][18] ,
    \RegFiles_inst/registers[1][17] ,
    \RegFiles_inst/registers[1][16] ,
    \RegFiles_inst/registers[1][15] ,
    \RegFiles_inst/registers[1][14] ,
    \RegFiles_inst/registers[1][13] ,
    \RegFiles_inst/registers[1][12] ,
    \RegFiles_inst/registers[1][11] ,
    \RegFiles_inst/registers[1][10] ,
    \RegFiles_inst/registers[1][9] ,
    \RegFiles_inst/registers[1][8] ,
    \RegFiles_inst/registers[1][7] ,
    \RegFiles_inst/registers[1][6] ,
    \RegFiles_inst/registers[1][5] ,
    \RegFiles_inst/registers[1][4] ,
    \RegFiles_inst/registers[1][3] ,
    \RegFiles_inst/registers[1][2] ,
    \RegFiles_inst/registers[1][1] ,
    \RegFiles_inst/registers[1][0] ,
    \RegFiles_inst/registers[2][31] ,
    \RegFiles_inst/registers[2][30] ,
    \RegFiles_inst/registers[2][29] ,
    \RegFiles_inst/registers[2][28] ,
    \RegFiles_inst/registers[2][27] ,
    \RegFiles_inst/registers[2][26] ,
    \RegFiles_inst/registers[2][25] ,
    \RegFiles_inst/registers[2][24] ,
    \RegFiles_inst/registers[2][23] ,
    \RegFiles_inst/registers[2][22] ,
    \RegFiles_inst/registers[2][21] ,
    \RegFiles_inst/registers[2][20] ,
    \RegFiles_inst/registers[2][19] ,
    \RegFiles_inst/registers[2][18] ,
    \RegFiles_inst/registers[2][17] ,
    \RegFiles_inst/registers[2][16] ,
    \RegFiles_inst/registers[2][15] ,
    \RegFiles_inst/registers[2][14] ,
    \RegFiles_inst/registers[2][13] ,
    \RegFiles_inst/registers[2][12] ,
    \RegFiles_inst/registers[2][11] ,
    \RegFiles_inst/registers[2][10] ,
    \RegFiles_inst/registers[2][9] ,
    \RegFiles_inst/registers[2][8] ,
    \RegFiles_inst/registers[2][7] ,
    \RegFiles_inst/registers[2][6] ,
    \RegFiles_inst/registers[2][5] ,
    \RegFiles_inst/registers[2][4] ,
    \RegFiles_inst/registers[2][3] ,
    \RegFiles_inst/registers[2][2] ,
    \RegFiles_inst/registers[2][1] ,
    \RegFiles_inst/registers[2][0] ,
    \RegFiles_inst/registers[3][31] ,
    \RegFiles_inst/registers[3][30] ,
    \RegFiles_inst/registers[3][29] ,
    \RegFiles_inst/registers[3][28] ,
    \RegFiles_inst/registers[3][27] ,
    \RegFiles_inst/registers[3][26] ,
    \RegFiles_inst/registers[3][25] ,
    \RegFiles_inst/registers[3][24] ,
    \RegFiles_inst/registers[3][23] ,
    \RegFiles_inst/registers[3][22] ,
    \RegFiles_inst/registers[3][21] ,
    \RegFiles_inst/registers[3][20] ,
    \RegFiles_inst/registers[3][19] ,
    \RegFiles_inst/registers[3][18] ,
    \RegFiles_inst/registers[3][17] ,
    \RegFiles_inst/registers[3][16] ,
    \RegFiles_inst/registers[3][15] ,
    \RegFiles_inst/registers[3][14] ,
    \RegFiles_inst/registers[3][13] ,
    \RegFiles_inst/registers[3][12] ,
    \RegFiles_inst/registers[3][11] ,
    \RegFiles_inst/registers[3][10] ,
    \RegFiles_inst/registers[3][9] ,
    \RegFiles_inst/registers[3][8] ,
    \RegFiles_inst/registers[3][7] ,
    \RegFiles_inst/registers[3][6] ,
    \RegFiles_inst/registers[3][5] ,
    \RegFiles_inst/registers[3][4] ,
    \RegFiles_inst/registers[3][3] ,
    \RegFiles_inst/registers[3][2] ,
    \RegFiles_inst/registers[3][1] ,
    \RegFiles_inst/registers[3][0] ,
    \RegFiles_inst/registers[4][31] ,
    \RegFiles_inst/registers[4][30] ,
    \RegFiles_inst/registers[4][29] ,
    \RegFiles_inst/registers[4][28] ,
    \RegFiles_inst/registers[4][27] ,
    \RegFiles_inst/registers[4][26] ,
    \RegFiles_inst/registers[4][25] ,
    \RegFiles_inst/registers[4][24] ,
    \RegFiles_inst/registers[4][23] ,
    \RegFiles_inst/registers[4][22] ,
    \RegFiles_inst/registers[4][21] ,
    \RegFiles_inst/registers[4][20] ,
    \RegFiles_inst/registers[4][19] ,
    \RegFiles_inst/registers[4][18] ,
    \RegFiles_inst/registers[4][17] ,
    \RegFiles_inst/registers[4][16] ,
    \RegFiles_inst/registers[4][15] ,
    \RegFiles_inst/registers[4][14] ,
    \RegFiles_inst/registers[4][13] ,
    \RegFiles_inst/registers[4][12] ,
    \RegFiles_inst/registers[4][11] ,
    \RegFiles_inst/registers[4][10] ,
    \RegFiles_inst/registers[4][9] ,
    \RegFiles_inst/registers[4][8] ,
    \RegFiles_inst/registers[4][7] ,
    \RegFiles_inst/registers[4][6] ,
    \RegFiles_inst/registers[4][5] ,
    \RegFiles_inst/registers[4][4] ,
    \RegFiles_inst/registers[4][3] ,
    \RegFiles_inst/registers[4][2] ,
    \RegFiles_inst/registers[4][1] ,
    \RegFiles_inst/registers[4][0] ,
    \RegFiles_inst/registers[5][31] ,
    \RegFiles_inst/registers[5][30] ,
    \RegFiles_inst/registers[5][29] ,
    \RegFiles_inst/registers[5][28] ,
    \RegFiles_inst/registers[5][27] ,
    \RegFiles_inst/registers[5][26] ,
    \RegFiles_inst/registers[5][25] ,
    \RegFiles_inst/registers[5][24] ,
    \RegFiles_inst/registers[5][23] ,
    \RegFiles_inst/registers[5][22] ,
    \RegFiles_inst/registers[5][21] ,
    \RegFiles_inst/registers[5][20] ,
    \RegFiles_inst/registers[5][19] ,
    \RegFiles_inst/registers[5][18] ,
    \RegFiles_inst/registers[5][17] ,
    \RegFiles_inst/registers[5][16] ,
    \RegFiles_inst/registers[5][15] ,
    \RegFiles_inst/registers[5][14] ,
    \RegFiles_inst/registers[5][13] ,
    \RegFiles_inst/registers[5][12] ,
    \RegFiles_inst/registers[5][11] ,
    \RegFiles_inst/registers[5][10] ,
    \RegFiles_inst/registers[5][9] ,
    \RegFiles_inst/registers[5][8] ,
    \RegFiles_inst/registers[5][7] ,
    \RegFiles_inst/registers[5][6] ,
    \RegFiles_inst/registers[5][5] ,
    \RegFiles_inst/registers[5][4] ,
    \RegFiles_inst/registers[5][3] ,
    \RegFiles_inst/registers[5][2] ,
    \RegFiles_inst/registers[5][1] ,
    \RegFiles_inst/registers[5][0] ,
    \RegFiles_inst/registers[6][31] ,
    \RegFiles_inst/registers[6][30] ,
    \RegFiles_inst/registers[6][29] ,
    \RegFiles_inst/registers[6][28] ,
    \RegFiles_inst/registers[6][27] ,
    \RegFiles_inst/registers[6][26] ,
    \RegFiles_inst/registers[6][25] ,
    \RegFiles_inst/registers[6][24] ,
    \RegFiles_inst/registers[6][23] ,
    \RegFiles_inst/registers[6][22] ,
    \RegFiles_inst/registers[6][21] ,
    \RegFiles_inst/registers[6][20] ,
    \RegFiles_inst/registers[6][19] ,
    \RegFiles_inst/registers[6][18] ,
    \RegFiles_inst/registers[6][17] ,
    \RegFiles_inst/registers[6][16] ,
    \RegFiles_inst/registers[6][15] ,
    \RegFiles_inst/registers[6][14] ,
    \RegFiles_inst/registers[6][13] ,
    \RegFiles_inst/registers[6][12] ,
    \RegFiles_inst/registers[6][11] ,
    \RegFiles_inst/registers[6][10] ,
    \RegFiles_inst/registers[6][9] ,
    \RegFiles_inst/registers[6][8] ,
    \RegFiles_inst/registers[6][7] ,
    \RegFiles_inst/registers[6][6] ,
    \RegFiles_inst/registers[6][5] ,
    \RegFiles_inst/registers[6][4] ,
    \RegFiles_inst/registers[6][3] ,
    \RegFiles_inst/registers[6][2] ,
    \RegFiles_inst/registers[6][1] ,
    \RegFiles_inst/registers[6][0] ,
    \RegFiles_inst/registers[7][31] ,
    \RegFiles_inst/registers[7][30] ,
    \RegFiles_inst/registers[7][29] ,
    \RegFiles_inst/registers[7][28] ,
    \RegFiles_inst/registers[7][27] ,
    \RegFiles_inst/registers[7][26] ,
    \RegFiles_inst/registers[7][25] ,
    \RegFiles_inst/registers[7][24] ,
    \RegFiles_inst/registers[7][23] ,
    \RegFiles_inst/registers[7][22] ,
    \RegFiles_inst/registers[7][21] ,
    \RegFiles_inst/registers[7][20] ,
    \RegFiles_inst/registers[7][19] ,
    \RegFiles_inst/registers[7][18] ,
    \RegFiles_inst/registers[7][17] ,
    \RegFiles_inst/registers[7][16] ,
    \RegFiles_inst/registers[7][15] ,
    \RegFiles_inst/registers[7][14] ,
    \RegFiles_inst/registers[7][13] ,
    \RegFiles_inst/registers[7][12] ,
    \RegFiles_inst/registers[7][11] ,
    \RegFiles_inst/registers[7][10] ,
    \RegFiles_inst/registers[7][9] ,
    \RegFiles_inst/registers[7][8] ,
    \RegFiles_inst/registers[7][7] ,
    \RegFiles_inst/registers[7][6] ,
    \RegFiles_inst/registers[7][5] ,
    \RegFiles_inst/registers[7][4] ,
    \RegFiles_inst/registers[7][3] ,
    \RegFiles_inst/registers[7][2] ,
    \RegFiles_inst/registers[7][1] ,
    \RegFiles_inst/registers[7][0] ,
    \RegFiles_inst/registers[8][31] ,
    \RegFiles_inst/registers[8][30] ,
    \RegFiles_inst/registers[8][29] ,
    \RegFiles_inst/registers[8][28] ,
    \RegFiles_inst/registers[8][27] ,
    \RegFiles_inst/registers[8][26] ,
    \RegFiles_inst/registers[8][25] ,
    \RegFiles_inst/registers[8][24] ,
    \RegFiles_inst/registers[8][23] ,
    \RegFiles_inst/registers[8][22] ,
    \RegFiles_inst/registers[8][21] ,
    \RegFiles_inst/registers[8][20] ,
    \RegFiles_inst/registers[8][19] ,
    \RegFiles_inst/registers[8][18] ,
    \RegFiles_inst/registers[8][17] ,
    \RegFiles_inst/registers[8][16] ,
    \RegFiles_inst/registers[8][15] ,
    \RegFiles_inst/registers[8][14] ,
    \RegFiles_inst/registers[8][13] ,
    \RegFiles_inst/registers[8][12] ,
    \RegFiles_inst/registers[8][11] ,
    \RegFiles_inst/registers[8][10] ,
    \RegFiles_inst/registers[8][9] ,
    \RegFiles_inst/registers[8][8] ,
    \RegFiles_inst/registers[8][7] ,
    \RegFiles_inst/registers[8][6] ,
    \RegFiles_inst/registers[8][5] ,
    \RegFiles_inst/registers[8][4] ,
    \RegFiles_inst/registers[8][3] ,
    \RegFiles_inst/registers[8][2] ,
    \RegFiles_inst/registers[8][1] ,
    \RegFiles_inst/registers[8][0] ,
    \ALU_inst/Result[31] ,
    \ALU_inst/Result[30] ,
    \ALU_inst/Result[29] ,
    \ALU_inst/Result[28] ,
    \ALU_inst/Result[27] ,
    \ALU_inst/Result[26] ,
    \ALU_inst/Result[25] ,
    \ALU_inst/Result[24] ,
    \ALU_inst/Result[23] ,
    \ALU_inst/Result[22] ,
    \ALU_inst/Result[21] ,
    \ALU_inst/Result[20] ,
    \ALU_inst/Result[19] ,
    \ALU_inst/Result[18] ,
    \ALU_inst/Result[17] ,
    \ALU_inst/Result[16] ,
    \ALU_inst/Result[15] ,
    \ALU_inst/Result[14] ,
    \ALU_inst/Result[13] ,
    \ALU_inst/Result[12] ,
    \ALU_inst/Result[11] ,
    \ALU_inst/Result[10] ,
    \ALU_inst/Result[9] ,
    \ALU_inst/Result[8] ,
    \ALU_inst/Result[7] ,
    \ALU_inst/Result[6] ,
    \ALU_inst/Result[5] ,
    \ALU_inst/Result[4] ,
    \ALU_inst/Result[3] ,
    \ALU_inst/Result[2] ,
    \ALU_inst/Result[1] ,
    \ALU_inst/Result[0] ,
    \RegFiles_inst/Write_Address[4] ,
    \RegFiles_inst/Write_Address[3] ,
    \RegFiles_inst/Write_Address[2] ,
    \RegFiles_inst/Write_Address[1] ,
    \RegFiles_inst/Write_Address[0] ,
    \clk_inst/divided_clk ,
    sys_clk,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input clk_in;
input \clk_inst/clk_mod[1] ;
input \clk_inst/clk_mod[0] ;
input \PC_Liet2_0/pc_out[25] ;
input \PC_Liet2_0/pc_out[24] ;
input \PC_Liet2_0/pc_out[23] ;
input \PC_Liet2_0/pc_out[22] ;
input \PC_Liet2_0/pc_out[21] ;
input \PC_Liet2_0/pc_out[20] ;
input \PC_Liet2_0/pc_out[19] ;
input \PC_Liet2_0/pc_out[18] ;
input \PC_Liet2_0/pc_out[17] ;
input \PC_Liet2_0/pc_out[16] ;
input \PC_Liet2_0/pc_out[15] ;
input \PC_Liet2_0/pc_out[14] ;
input \PC_Liet2_0/pc_out[13] ;
input \PC_Liet2_0/pc_out[12] ;
input \PC_Liet2_0/pc_out[11] ;
input \PC_Liet2_0/pc_out[10] ;
input \PC_Liet2_0/pc_out[9] ;
input \PC_Liet2_0/pc_out[8] ;
input \PC_Liet2_0/pc_out[7] ;
input \PC_Liet2_0/pc_out[6] ;
input \PC_Liet2_0/pc_out[5] ;
input \PC_Liet2_0/pc_out[4] ;
input \PC_Liet2_0/pc_out[3] ;
input \PC_Liet2_0/pc_out[2] ;
input \PC_Liet2_0/pc_out[1] ;
input \PC_Liet2_0/pc_out[0] ;
input \Mode[1] ;
input \Mode[0] ;
input \Opcode[3] ;
input \Opcode[2] ;
input \Opcode[1] ;
input \Opcode[0] ;
input \Destination[4] ;
input \Destination[3] ;
input \Destination[2] ;
input \Destination[1] ;
input \Destination[0] ;
input \Argument_A[4] ;
input \Argument_A[3] ;
input \Argument_A[2] ;
input \Argument_A[1] ;
input \Argument_A[0] ;
input \Argument_B[4] ;
input \Argument_B[3] ;
input \Argument_B[2] ;
input \Argument_B[1] ;
input \Argument_B[0] ;
input Is_Immedia;
input \Immediate[15] ;
input \Immediate[14] ;
input \Immediate[13] ;
input \Immediate[12] ;
input \Immediate[11] ;
input \Immediate[10] ;
input \Immediate[9] ;
input \Immediate[8] ;
input \Immediate[7] ;
input \Immediate[6] ;
input \Immediate[5] ;
input \Immediate[4] ;
input \Immediate[3] ;
input \Immediate[2] ;
input \Immediate[1] ;
input \Immediate[0] ;
input \INSTR[31] ;
input \INSTR[30] ;
input \INSTR[29] ;
input \INSTR[28] ;
input \INSTR[27] ;
input \INSTR[26] ;
input \INSTR[25] ;
input \INSTR[24] ;
input \INSTR[23] ;
input \INSTR[22] ;
input \INSTR[21] ;
input \INSTR[20] ;
input \INSTR[19] ;
input \INSTR[18] ;
input \INSTR[17] ;
input \INSTR[16] ;
input \INSTR[15] ;
input \INSTR[14] ;
input \INSTR[13] ;
input \INSTR[12] ;
input \INSTR[11] ;
input \INSTR[10] ;
input \INSTR[9] ;
input \INSTR[8] ;
input \INSTR[7] ;
input \INSTR[6] ;
input \INSTR[5] ;
input \INSTR[4] ;
input \INSTR[3] ;
input \INSTR[2] ;
input \INSTR[1] ;
input \INSTR[0] ;
input \RegFiles_inst/registers[0][31] ;
input \RegFiles_inst/registers[0][30] ;
input \RegFiles_inst/registers[0][29] ;
input \RegFiles_inst/registers[0][28] ;
input \RegFiles_inst/registers[0][27] ;
input \RegFiles_inst/registers[0][26] ;
input \RegFiles_inst/registers[0][25] ;
input \RegFiles_inst/registers[0][24] ;
input \RegFiles_inst/registers[0][23] ;
input \RegFiles_inst/registers[0][22] ;
input \RegFiles_inst/registers[0][21] ;
input \RegFiles_inst/registers[0][20] ;
input \RegFiles_inst/registers[0][19] ;
input \RegFiles_inst/registers[0][18] ;
input \RegFiles_inst/registers[0][17] ;
input \RegFiles_inst/registers[0][16] ;
input \RegFiles_inst/registers[0][15] ;
input \RegFiles_inst/registers[0][14] ;
input \RegFiles_inst/registers[0][13] ;
input \RegFiles_inst/registers[0][12] ;
input \RegFiles_inst/registers[0][11] ;
input \RegFiles_inst/registers[0][10] ;
input \RegFiles_inst/registers[0][9] ;
input \RegFiles_inst/registers[0][8] ;
input \RegFiles_inst/registers[0][7] ;
input \RegFiles_inst/registers[0][6] ;
input \RegFiles_inst/registers[0][5] ;
input \RegFiles_inst/registers[0][4] ;
input \RegFiles_inst/registers[0][3] ;
input \RegFiles_inst/registers[0][2] ;
input \RegFiles_inst/registers[0][1] ;
input \RegFiles_inst/registers[0][0] ;
input \RegFiles_inst/registers[1][31] ;
input \RegFiles_inst/registers[1][30] ;
input \RegFiles_inst/registers[1][29] ;
input \RegFiles_inst/registers[1][28] ;
input \RegFiles_inst/registers[1][27] ;
input \RegFiles_inst/registers[1][26] ;
input \RegFiles_inst/registers[1][25] ;
input \RegFiles_inst/registers[1][24] ;
input \RegFiles_inst/registers[1][23] ;
input \RegFiles_inst/registers[1][22] ;
input \RegFiles_inst/registers[1][21] ;
input \RegFiles_inst/registers[1][20] ;
input \RegFiles_inst/registers[1][19] ;
input \RegFiles_inst/registers[1][18] ;
input \RegFiles_inst/registers[1][17] ;
input \RegFiles_inst/registers[1][16] ;
input \RegFiles_inst/registers[1][15] ;
input \RegFiles_inst/registers[1][14] ;
input \RegFiles_inst/registers[1][13] ;
input \RegFiles_inst/registers[1][12] ;
input \RegFiles_inst/registers[1][11] ;
input \RegFiles_inst/registers[1][10] ;
input \RegFiles_inst/registers[1][9] ;
input \RegFiles_inst/registers[1][8] ;
input \RegFiles_inst/registers[1][7] ;
input \RegFiles_inst/registers[1][6] ;
input \RegFiles_inst/registers[1][5] ;
input \RegFiles_inst/registers[1][4] ;
input \RegFiles_inst/registers[1][3] ;
input \RegFiles_inst/registers[1][2] ;
input \RegFiles_inst/registers[1][1] ;
input \RegFiles_inst/registers[1][0] ;
input \RegFiles_inst/registers[2][31] ;
input \RegFiles_inst/registers[2][30] ;
input \RegFiles_inst/registers[2][29] ;
input \RegFiles_inst/registers[2][28] ;
input \RegFiles_inst/registers[2][27] ;
input \RegFiles_inst/registers[2][26] ;
input \RegFiles_inst/registers[2][25] ;
input \RegFiles_inst/registers[2][24] ;
input \RegFiles_inst/registers[2][23] ;
input \RegFiles_inst/registers[2][22] ;
input \RegFiles_inst/registers[2][21] ;
input \RegFiles_inst/registers[2][20] ;
input \RegFiles_inst/registers[2][19] ;
input \RegFiles_inst/registers[2][18] ;
input \RegFiles_inst/registers[2][17] ;
input \RegFiles_inst/registers[2][16] ;
input \RegFiles_inst/registers[2][15] ;
input \RegFiles_inst/registers[2][14] ;
input \RegFiles_inst/registers[2][13] ;
input \RegFiles_inst/registers[2][12] ;
input \RegFiles_inst/registers[2][11] ;
input \RegFiles_inst/registers[2][10] ;
input \RegFiles_inst/registers[2][9] ;
input \RegFiles_inst/registers[2][8] ;
input \RegFiles_inst/registers[2][7] ;
input \RegFiles_inst/registers[2][6] ;
input \RegFiles_inst/registers[2][5] ;
input \RegFiles_inst/registers[2][4] ;
input \RegFiles_inst/registers[2][3] ;
input \RegFiles_inst/registers[2][2] ;
input \RegFiles_inst/registers[2][1] ;
input \RegFiles_inst/registers[2][0] ;
input \RegFiles_inst/registers[3][31] ;
input \RegFiles_inst/registers[3][30] ;
input \RegFiles_inst/registers[3][29] ;
input \RegFiles_inst/registers[3][28] ;
input \RegFiles_inst/registers[3][27] ;
input \RegFiles_inst/registers[3][26] ;
input \RegFiles_inst/registers[3][25] ;
input \RegFiles_inst/registers[3][24] ;
input \RegFiles_inst/registers[3][23] ;
input \RegFiles_inst/registers[3][22] ;
input \RegFiles_inst/registers[3][21] ;
input \RegFiles_inst/registers[3][20] ;
input \RegFiles_inst/registers[3][19] ;
input \RegFiles_inst/registers[3][18] ;
input \RegFiles_inst/registers[3][17] ;
input \RegFiles_inst/registers[3][16] ;
input \RegFiles_inst/registers[3][15] ;
input \RegFiles_inst/registers[3][14] ;
input \RegFiles_inst/registers[3][13] ;
input \RegFiles_inst/registers[3][12] ;
input \RegFiles_inst/registers[3][11] ;
input \RegFiles_inst/registers[3][10] ;
input \RegFiles_inst/registers[3][9] ;
input \RegFiles_inst/registers[3][8] ;
input \RegFiles_inst/registers[3][7] ;
input \RegFiles_inst/registers[3][6] ;
input \RegFiles_inst/registers[3][5] ;
input \RegFiles_inst/registers[3][4] ;
input \RegFiles_inst/registers[3][3] ;
input \RegFiles_inst/registers[3][2] ;
input \RegFiles_inst/registers[3][1] ;
input \RegFiles_inst/registers[3][0] ;
input \RegFiles_inst/registers[4][31] ;
input \RegFiles_inst/registers[4][30] ;
input \RegFiles_inst/registers[4][29] ;
input \RegFiles_inst/registers[4][28] ;
input \RegFiles_inst/registers[4][27] ;
input \RegFiles_inst/registers[4][26] ;
input \RegFiles_inst/registers[4][25] ;
input \RegFiles_inst/registers[4][24] ;
input \RegFiles_inst/registers[4][23] ;
input \RegFiles_inst/registers[4][22] ;
input \RegFiles_inst/registers[4][21] ;
input \RegFiles_inst/registers[4][20] ;
input \RegFiles_inst/registers[4][19] ;
input \RegFiles_inst/registers[4][18] ;
input \RegFiles_inst/registers[4][17] ;
input \RegFiles_inst/registers[4][16] ;
input \RegFiles_inst/registers[4][15] ;
input \RegFiles_inst/registers[4][14] ;
input \RegFiles_inst/registers[4][13] ;
input \RegFiles_inst/registers[4][12] ;
input \RegFiles_inst/registers[4][11] ;
input \RegFiles_inst/registers[4][10] ;
input \RegFiles_inst/registers[4][9] ;
input \RegFiles_inst/registers[4][8] ;
input \RegFiles_inst/registers[4][7] ;
input \RegFiles_inst/registers[4][6] ;
input \RegFiles_inst/registers[4][5] ;
input \RegFiles_inst/registers[4][4] ;
input \RegFiles_inst/registers[4][3] ;
input \RegFiles_inst/registers[4][2] ;
input \RegFiles_inst/registers[4][1] ;
input \RegFiles_inst/registers[4][0] ;
input \RegFiles_inst/registers[5][31] ;
input \RegFiles_inst/registers[5][30] ;
input \RegFiles_inst/registers[5][29] ;
input \RegFiles_inst/registers[5][28] ;
input \RegFiles_inst/registers[5][27] ;
input \RegFiles_inst/registers[5][26] ;
input \RegFiles_inst/registers[5][25] ;
input \RegFiles_inst/registers[5][24] ;
input \RegFiles_inst/registers[5][23] ;
input \RegFiles_inst/registers[5][22] ;
input \RegFiles_inst/registers[5][21] ;
input \RegFiles_inst/registers[5][20] ;
input \RegFiles_inst/registers[5][19] ;
input \RegFiles_inst/registers[5][18] ;
input \RegFiles_inst/registers[5][17] ;
input \RegFiles_inst/registers[5][16] ;
input \RegFiles_inst/registers[5][15] ;
input \RegFiles_inst/registers[5][14] ;
input \RegFiles_inst/registers[5][13] ;
input \RegFiles_inst/registers[5][12] ;
input \RegFiles_inst/registers[5][11] ;
input \RegFiles_inst/registers[5][10] ;
input \RegFiles_inst/registers[5][9] ;
input \RegFiles_inst/registers[5][8] ;
input \RegFiles_inst/registers[5][7] ;
input \RegFiles_inst/registers[5][6] ;
input \RegFiles_inst/registers[5][5] ;
input \RegFiles_inst/registers[5][4] ;
input \RegFiles_inst/registers[5][3] ;
input \RegFiles_inst/registers[5][2] ;
input \RegFiles_inst/registers[5][1] ;
input \RegFiles_inst/registers[5][0] ;
input \RegFiles_inst/registers[6][31] ;
input \RegFiles_inst/registers[6][30] ;
input \RegFiles_inst/registers[6][29] ;
input \RegFiles_inst/registers[6][28] ;
input \RegFiles_inst/registers[6][27] ;
input \RegFiles_inst/registers[6][26] ;
input \RegFiles_inst/registers[6][25] ;
input \RegFiles_inst/registers[6][24] ;
input \RegFiles_inst/registers[6][23] ;
input \RegFiles_inst/registers[6][22] ;
input \RegFiles_inst/registers[6][21] ;
input \RegFiles_inst/registers[6][20] ;
input \RegFiles_inst/registers[6][19] ;
input \RegFiles_inst/registers[6][18] ;
input \RegFiles_inst/registers[6][17] ;
input \RegFiles_inst/registers[6][16] ;
input \RegFiles_inst/registers[6][15] ;
input \RegFiles_inst/registers[6][14] ;
input \RegFiles_inst/registers[6][13] ;
input \RegFiles_inst/registers[6][12] ;
input \RegFiles_inst/registers[6][11] ;
input \RegFiles_inst/registers[6][10] ;
input \RegFiles_inst/registers[6][9] ;
input \RegFiles_inst/registers[6][8] ;
input \RegFiles_inst/registers[6][7] ;
input \RegFiles_inst/registers[6][6] ;
input \RegFiles_inst/registers[6][5] ;
input \RegFiles_inst/registers[6][4] ;
input \RegFiles_inst/registers[6][3] ;
input \RegFiles_inst/registers[6][2] ;
input \RegFiles_inst/registers[6][1] ;
input \RegFiles_inst/registers[6][0] ;
input \RegFiles_inst/registers[7][31] ;
input \RegFiles_inst/registers[7][30] ;
input \RegFiles_inst/registers[7][29] ;
input \RegFiles_inst/registers[7][28] ;
input \RegFiles_inst/registers[7][27] ;
input \RegFiles_inst/registers[7][26] ;
input \RegFiles_inst/registers[7][25] ;
input \RegFiles_inst/registers[7][24] ;
input \RegFiles_inst/registers[7][23] ;
input \RegFiles_inst/registers[7][22] ;
input \RegFiles_inst/registers[7][21] ;
input \RegFiles_inst/registers[7][20] ;
input \RegFiles_inst/registers[7][19] ;
input \RegFiles_inst/registers[7][18] ;
input \RegFiles_inst/registers[7][17] ;
input \RegFiles_inst/registers[7][16] ;
input \RegFiles_inst/registers[7][15] ;
input \RegFiles_inst/registers[7][14] ;
input \RegFiles_inst/registers[7][13] ;
input \RegFiles_inst/registers[7][12] ;
input \RegFiles_inst/registers[7][11] ;
input \RegFiles_inst/registers[7][10] ;
input \RegFiles_inst/registers[7][9] ;
input \RegFiles_inst/registers[7][8] ;
input \RegFiles_inst/registers[7][7] ;
input \RegFiles_inst/registers[7][6] ;
input \RegFiles_inst/registers[7][5] ;
input \RegFiles_inst/registers[7][4] ;
input \RegFiles_inst/registers[7][3] ;
input \RegFiles_inst/registers[7][2] ;
input \RegFiles_inst/registers[7][1] ;
input \RegFiles_inst/registers[7][0] ;
input \RegFiles_inst/registers[8][31] ;
input \RegFiles_inst/registers[8][30] ;
input \RegFiles_inst/registers[8][29] ;
input \RegFiles_inst/registers[8][28] ;
input \RegFiles_inst/registers[8][27] ;
input \RegFiles_inst/registers[8][26] ;
input \RegFiles_inst/registers[8][25] ;
input \RegFiles_inst/registers[8][24] ;
input \RegFiles_inst/registers[8][23] ;
input \RegFiles_inst/registers[8][22] ;
input \RegFiles_inst/registers[8][21] ;
input \RegFiles_inst/registers[8][20] ;
input \RegFiles_inst/registers[8][19] ;
input \RegFiles_inst/registers[8][18] ;
input \RegFiles_inst/registers[8][17] ;
input \RegFiles_inst/registers[8][16] ;
input \RegFiles_inst/registers[8][15] ;
input \RegFiles_inst/registers[8][14] ;
input \RegFiles_inst/registers[8][13] ;
input \RegFiles_inst/registers[8][12] ;
input \RegFiles_inst/registers[8][11] ;
input \RegFiles_inst/registers[8][10] ;
input \RegFiles_inst/registers[8][9] ;
input \RegFiles_inst/registers[8][8] ;
input \RegFiles_inst/registers[8][7] ;
input \RegFiles_inst/registers[8][6] ;
input \RegFiles_inst/registers[8][5] ;
input \RegFiles_inst/registers[8][4] ;
input \RegFiles_inst/registers[8][3] ;
input \RegFiles_inst/registers[8][2] ;
input \RegFiles_inst/registers[8][1] ;
input \RegFiles_inst/registers[8][0] ;
input \ALU_inst/Result[31] ;
input \ALU_inst/Result[30] ;
input \ALU_inst/Result[29] ;
input \ALU_inst/Result[28] ;
input \ALU_inst/Result[27] ;
input \ALU_inst/Result[26] ;
input \ALU_inst/Result[25] ;
input \ALU_inst/Result[24] ;
input \ALU_inst/Result[23] ;
input \ALU_inst/Result[22] ;
input \ALU_inst/Result[21] ;
input \ALU_inst/Result[20] ;
input \ALU_inst/Result[19] ;
input \ALU_inst/Result[18] ;
input \ALU_inst/Result[17] ;
input \ALU_inst/Result[16] ;
input \ALU_inst/Result[15] ;
input \ALU_inst/Result[14] ;
input \ALU_inst/Result[13] ;
input \ALU_inst/Result[12] ;
input \ALU_inst/Result[11] ;
input \ALU_inst/Result[10] ;
input \ALU_inst/Result[9] ;
input \ALU_inst/Result[8] ;
input \ALU_inst/Result[7] ;
input \ALU_inst/Result[6] ;
input \ALU_inst/Result[5] ;
input \ALU_inst/Result[4] ;
input \ALU_inst/Result[3] ;
input \ALU_inst/Result[2] ;
input \ALU_inst/Result[1] ;
input \ALU_inst/Result[0] ;
input \RegFiles_inst/Write_Address[4] ;
input \RegFiles_inst/Write_Address[3] ;
input \RegFiles_inst/Write_Address[2] ;
input \RegFiles_inst/Write_Address[1] ;
input \RegFiles_inst/Write_Address[0] ;
input \clk_inst/divided_clk ;
input sys_clk;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire clk_in;
wire \clk_inst/clk_mod[1] ;
wire \clk_inst/clk_mod[0] ;
wire \PC_Liet2_0/pc_out[25] ;
wire \PC_Liet2_0/pc_out[24] ;
wire \PC_Liet2_0/pc_out[23] ;
wire \PC_Liet2_0/pc_out[22] ;
wire \PC_Liet2_0/pc_out[21] ;
wire \PC_Liet2_0/pc_out[20] ;
wire \PC_Liet2_0/pc_out[19] ;
wire \PC_Liet2_0/pc_out[18] ;
wire \PC_Liet2_0/pc_out[17] ;
wire \PC_Liet2_0/pc_out[16] ;
wire \PC_Liet2_0/pc_out[15] ;
wire \PC_Liet2_0/pc_out[14] ;
wire \PC_Liet2_0/pc_out[13] ;
wire \PC_Liet2_0/pc_out[12] ;
wire \PC_Liet2_0/pc_out[11] ;
wire \PC_Liet2_0/pc_out[10] ;
wire \PC_Liet2_0/pc_out[9] ;
wire \PC_Liet2_0/pc_out[8] ;
wire \PC_Liet2_0/pc_out[7] ;
wire \PC_Liet2_0/pc_out[6] ;
wire \PC_Liet2_0/pc_out[5] ;
wire \PC_Liet2_0/pc_out[4] ;
wire \PC_Liet2_0/pc_out[3] ;
wire \PC_Liet2_0/pc_out[2] ;
wire \PC_Liet2_0/pc_out[1] ;
wire \PC_Liet2_0/pc_out[0] ;
wire \Mode[1] ;
wire \Mode[0] ;
wire \Opcode[3] ;
wire \Opcode[2] ;
wire \Opcode[1] ;
wire \Opcode[0] ;
wire \Destination[4] ;
wire \Destination[3] ;
wire \Destination[2] ;
wire \Destination[1] ;
wire \Destination[0] ;
wire \Argument_A[4] ;
wire \Argument_A[3] ;
wire \Argument_A[2] ;
wire \Argument_A[1] ;
wire \Argument_A[0] ;
wire \Argument_B[4] ;
wire \Argument_B[3] ;
wire \Argument_B[2] ;
wire \Argument_B[1] ;
wire \Argument_B[0] ;
wire Is_Immedia;
wire \Immediate[15] ;
wire \Immediate[14] ;
wire \Immediate[13] ;
wire \Immediate[12] ;
wire \Immediate[11] ;
wire \Immediate[10] ;
wire \Immediate[9] ;
wire \Immediate[8] ;
wire \Immediate[7] ;
wire \Immediate[6] ;
wire \Immediate[5] ;
wire \Immediate[4] ;
wire \Immediate[3] ;
wire \Immediate[2] ;
wire \Immediate[1] ;
wire \Immediate[0] ;
wire \INSTR[31] ;
wire \INSTR[30] ;
wire \INSTR[29] ;
wire \INSTR[28] ;
wire \INSTR[27] ;
wire \INSTR[26] ;
wire \INSTR[25] ;
wire \INSTR[24] ;
wire \INSTR[23] ;
wire \INSTR[22] ;
wire \INSTR[21] ;
wire \INSTR[20] ;
wire \INSTR[19] ;
wire \INSTR[18] ;
wire \INSTR[17] ;
wire \INSTR[16] ;
wire \INSTR[15] ;
wire \INSTR[14] ;
wire \INSTR[13] ;
wire \INSTR[12] ;
wire \INSTR[11] ;
wire \INSTR[10] ;
wire \INSTR[9] ;
wire \INSTR[8] ;
wire \INSTR[7] ;
wire \INSTR[6] ;
wire \INSTR[5] ;
wire \INSTR[4] ;
wire \INSTR[3] ;
wire \INSTR[2] ;
wire \INSTR[1] ;
wire \INSTR[0] ;
wire \RegFiles_inst/registers[0][31] ;
wire \RegFiles_inst/registers[0][30] ;
wire \RegFiles_inst/registers[0][29] ;
wire \RegFiles_inst/registers[0][28] ;
wire \RegFiles_inst/registers[0][27] ;
wire \RegFiles_inst/registers[0][26] ;
wire \RegFiles_inst/registers[0][25] ;
wire \RegFiles_inst/registers[0][24] ;
wire \RegFiles_inst/registers[0][23] ;
wire \RegFiles_inst/registers[0][22] ;
wire \RegFiles_inst/registers[0][21] ;
wire \RegFiles_inst/registers[0][20] ;
wire \RegFiles_inst/registers[0][19] ;
wire \RegFiles_inst/registers[0][18] ;
wire \RegFiles_inst/registers[0][17] ;
wire \RegFiles_inst/registers[0][16] ;
wire \RegFiles_inst/registers[0][15] ;
wire \RegFiles_inst/registers[0][14] ;
wire \RegFiles_inst/registers[0][13] ;
wire \RegFiles_inst/registers[0][12] ;
wire \RegFiles_inst/registers[0][11] ;
wire \RegFiles_inst/registers[0][10] ;
wire \RegFiles_inst/registers[0][9] ;
wire \RegFiles_inst/registers[0][8] ;
wire \RegFiles_inst/registers[0][7] ;
wire \RegFiles_inst/registers[0][6] ;
wire \RegFiles_inst/registers[0][5] ;
wire \RegFiles_inst/registers[0][4] ;
wire \RegFiles_inst/registers[0][3] ;
wire \RegFiles_inst/registers[0][2] ;
wire \RegFiles_inst/registers[0][1] ;
wire \RegFiles_inst/registers[0][0] ;
wire \RegFiles_inst/registers[1][31] ;
wire \RegFiles_inst/registers[1][30] ;
wire \RegFiles_inst/registers[1][29] ;
wire \RegFiles_inst/registers[1][28] ;
wire \RegFiles_inst/registers[1][27] ;
wire \RegFiles_inst/registers[1][26] ;
wire \RegFiles_inst/registers[1][25] ;
wire \RegFiles_inst/registers[1][24] ;
wire \RegFiles_inst/registers[1][23] ;
wire \RegFiles_inst/registers[1][22] ;
wire \RegFiles_inst/registers[1][21] ;
wire \RegFiles_inst/registers[1][20] ;
wire \RegFiles_inst/registers[1][19] ;
wire \RegFiles_inst/registers[1][18] ;
wire \RegFiles_inst/registers[1][17] ;
wire \RegFiles_inst/registers[1][16] ;
wire \RegFiles_inst/registers[1][15] ;
wire \RegFiles_inst/registers[1][14] ;
wire \RegFiles_inst/registers[1][13] ;
wire \RegFiles_inst/registers[1][12] ;
wire \RegFiles_inst/registers[1][11] ;
wire \RegFiles_inst/registers[1][10] ;
wire \RegFiles_inst/registers[1][9] ;
wire \RegFiles_inst/registers[1][8] ;
wire \RegFiles_inst/registers[1][7] ;
wire \RegFiles_inst/registers[1][6] ;
wire \RegFiles_inst/registers[1][5] ;
wire \RegFiles_inst/registers[1][4] ;
wire \RegFiles_inst/registers[1][3] ;
wire \RegFiles_inst/registers[1][2] ;
wire \RegFiles_inst/registers[1][1] ;
wire \RegFiles_inst/registers[1][0] ;
wire \RegFiles_inst/registers[2][31] ;
wire \RegFiles_inst/registers[2][30] ;
wire \RegFiles_inst/registers[2][29] ;
wire \RegFiles_inst/registers[2][28] ;
wire \RegFiles_inst/registers[2][27] ;
wire \RegFiles_inst/registers[2][26] ;
wire \RegFiles_inst/registers[2][25] ;
wire \RegFiles_inst/registers[2][24] ;
wire \RegFiles_inst/registers[2][23] ;
wire \RegFiles_inst/registers[2][22] ;
wire \RegFiles_inst/registers[2][21] ;
wire \RegFiles_inst/registers[2][20] ;
wire \RegFiles_inst/registers[2][19] ;
wire \RegFiles_inst/registers[2][18] ;
wire \RegFiles_inst/registers[2][17] ;
wire \RegFiles_inst/registers[2][16] ;
wire \RegFiles_inst/registers[2][15] ;
wire \RegFiles_inst/registers[2][14] ;
wire \RegFiles_inst/registers[2][13] ;
wire \RegFiles_inst/registers[2][12] ;
wire \RegFiles_inst/registers[2][11] ;
wire \RegFiles_inst/registers[2][10] ;
wire \RegFiles_inst/registers[2][9] ;
wire \RegFiles_inst/registers[2][8] ;
wire \RegFiles_inst/registers[2][7] ;
wire \RegFiles_inst/registers[2][6] ;
wire \RegFiles_inst/registers[2][5] ;
wire \RegFiles_inst/registers[2][4] ;
wire \RegFiles_inst/registers[2][3] ;
wire \RegFiles_inst/registers[2][2] ;
wire \RegFiles_inst/registers[2][1] ;
wire \RegFiles_inst/registers[2][0] ;
wire \RegFiles_inst/registers[3][31] ;
wire \RegFiles_inst/registers[3][30] ;
wire \RegFiles_inst/registers[3][29] ;
wire \RegFiles_inst/registers[3][28] ;
wire \RegFiles_inst/registers[3][27] ;
wire \RegFiles_inst/registers[3][26] ;
wire \RegFiles_inst/registers[3][25] ;
wire \RegFiles_inst/registers[3][24] ;
wire \RegFiles_inst/registers[3][23] ;
wire \RegFiles_inst/registers[3][22] ;
wire \RegFiles_inst/registers[3][21] ;
wire \RegFiles_inst/registers[3][20] ;
wire \RegFiles_inst/registers[3][19] ;
wire \RegFiles_inst/registers[3][18] ;
wire \RegFiles_inst/registers[3][17] ;
wire \RegFiles_inst/registers[3][16] ;
wire \RegFiles_inst/registers[3][15] ;
wire \RegFiles_inst/registers[3][14] ;
wire \RegFiles_inst/registers[3][13] ;
wire \RegFiles_inst/registers[3][12] ;
wire \RegFiles_inst/registers[3][11] ;
wire \RegFiles_inst/registers[3][10] ;
wire \RegFiles_inst/registers[3][9] ;
wire \RegFiles_inst/registers[3][8] ;
wire \RegFiles_inst/registers[3][7] ;
wire \RegFiles_inst/registers[3][6] ;
wire \RegFiles_inst/registers[3][5] ;
wire \RegFiles_inst/registers[3][4] ;
wire \RegFiles_inst/registers[3][3] ;
wire \RegFiles_inst/registers[3][2] ;
wire \RegFiles_inst/registers[3][1] ;
wire \RegFiles_inst/registers[3][0] ;
wire \RegFiles_inst/registers[4][31] ;
wire \RegFiles_inst/registers[4][30] ;
wire \RegFiles_inst/registers[4][29] ;
wire \RegFiles_inst/registers[4][28] ;
wire \RegFiles_inst/registers[4][27] ;
wire \RegFiles_inst/registers[4][26] ;
wire \RegFiles_inst/registers[4][25] ;
wire \RegFiles_inst/registers[4][24] ;
wire \RegFiles_inst/registers[4][23] ;
wire \RegFiles_inst/registers[4][22] ;
wire \RegFiles_inst/registers[4][21] ;
wire \RegFiles_inst/registers[4][20] ;
wire \RegFiles_inst/registers[4][19] ;
wire \RegFiles_inst/registers[4][18] ;
wire \RegFiles_inst/registers[4][17] ;
wire \RegFiles_inst/registers[4][16] ;
wire \RegFiles_inst/registers[4][15] ;
wire \RegFiles_inst/registers[4][14] ;
wire \RegFiles_inst/registers[4][13] ;
wire \RegFiles_inst/registers[4][12] ;
wire \RegFiles_inst/registers[4][11] ;
wire \RegFiles_inst/registers[4][10] ;
wire \RegFiles_inst/registers[4][9] ;
wire \RegFiles_inst/registers[4][8] ;
wire \RegFiles_inst/registers[4][7] ;
wire \RegFiles_inst/registers[4][6] ;
wire \RegFiles_inst/registers[4][5] ;
wire \RegFiles_inst/registers[4][4] ;
wire \RegFiles_inst/registers[4][3] ;
wire \RegFiles_inst/registers[4][2] ;
wire \RegFiles_inst/registers[4][1] ;
wire \RegFiles_inst/registers[4][0] ;
wire \RegFiles_inst/registers[5][31] ;
wire \RegFiles_inst/registers[5][30] ;
wire \RegFiles_inst/registers[5][29] ;
wire \RegFiles_inst/registers[5][28] ;
wire \RegFiles_inst/registers[5][27] ;
wire \RegFiles_inst/registers[5][26] ;
wire \RegFiles_inst/registers[5][25] ;
wire \RegFiles_inst/registers[5][24] ;
wire \RegFiles_inst/registers[5][23] ;
wire \RegFiles_inst/registers[5][22] ;
wire \RegFiles_inst/registers[5][21] ;
wire \RegFiles_inst/registers[5][20] ;
wire \RegFiles_inst/registers[5][19] ;
wire \RegFiles_inst/registers[5][18] ;
wire \RegFiles_inst/registers[5][17] ;
wire \RegFiles_inst/registers[5][16] ;
wire \RegFiles_inst/registers[5][15] ;
wire \RegFiles_inst/registers[5][14] ;
wire \RegFiles_inst/registers[5][13] ;
wire \RegFiles_inst/registers[5][12] ;
wire \RegFiles_inst/registers[5][11] ;
wire \RegFiles_inst/registers[5][10] ;
wire \RegFiles_inst/registers[5][9] ;
wire \RegFiles_inst/registers[5][8] ;
wire \RegFiles_inst/registers[5][7] ;
wire \RegFiles_inst/registers[5][6] ;
wire \RegFiles_inst/registers[5][5] ;
wire \RegFiles_inst/registers[5][4] ;
wire \RegFiles_inst/registers[5][3] ;
wire \RegFiles_inst/registers[5][2] ;
wire \RegFiles_inst/registers[5][1] ;
wire \RegFiles_inst/registers[5][0] ;
wire \RegFiles_inst/registers[6][31] ;
wire \RegFiles_inst/registers[6][30] ;
wire \RegFiles_inst/registers[6][29] ;
wire \RegFiles_inst/registers[6][28] ;
wire \RegFiles_inst/registers[6][27] ;
wire \RegFiles_inst/registers[6][26] ;
wire \RegFiles_inst/registers[6][25] ;
wire \RegFiles_inst/registers[6][24] ;
wire \RegFiles_inst/registers[6][23] ;
wire \RegFiles_inst/registers[6][22] ;
wire \RegFiles_inst/registers[6][21] ;
wire \RegFiles_inst/registers[6][20] ;
wire \RegFiles_inst/registers[6][19] ;
wire \RegFiles_inst/registers[6][18] ;
wire \RegFiles_inst/registers[6][17] ;
wire \RegFiles_inst/registers[6][16] ;
wire \RegFiles_inst/registers[6][15] ;
wire \RegFiles_inst/registers[6][14] ;
wire \RegFiles_inst/registers[6][13] ;
wire \RegFiles_inst/registers[6][12] ;
wire \RegFiles_inst/registers[6][11] ;
wire \RegFiles_inst/registers[6][10] ;
wire \RegFiles_inst/registers[6][9] ;
wire \RegFiles_inst/registers[6][8] ;
wire \RegFiles_inst/registers[6][7] ;
wire \RegFiles_inst/registers[6][6] ;
wire \RegFiles_inst/registers[6][5] ;
wire \RegFiles_inst/registers[6][4] ;
wire \RegFiles_inst/registers[6][3] ;
wire \RegFiles_inst/registers[6][2] ;
wire \RegFiles_inst/registers[6][1] ;
wire \RegFiles_inst/registers[6][0] ;
wire \RegFiles_inst/registers[7][31] ;
wire \RegFiles_inst/registers[7][30] ;
wire \RegFiles_inst/registers[7][29] ;
wire \RegFiles_inst/registers[7][28] ;
wire \RegFiles_inst/registers[7][27] ;
wire \RegFiles_inst/registers[7][26] ;
wire \RegFiles_inst/registers[7][25] ;
wire \RegFiles_inst/registers[7][24] ;
wire \RegFiles_inst/registers[7][23] ;
wire \RegFiles_inst/registers[7][22] ;
wire \RegFiles_inst/registers[7][21] ;
wire \RegFiles_inst/registers[7][20] ;
wire \RegFiles_inst/registers[7][19] ;
wire \RegFiles_inst/registers[7][18] ;
wire \RegFiles_inst/registers[7][17] ;
wire \RegFiles_inst/registers[7][16] ;
wire \RegFiles_inst/registers[7][15] ;
wire \RegFiles_inst/registers[7][14] ;
wire \RegFiles_inst/registers[7][13] ;
wire \RegFiles_inst/registers[7][12] ;
wire \RegFiles_inst/registers[7][11] ;
wire \RegFiles_inst/registers[7][10] ;
wire \RegFiles_inst/registers[7][9] ;
wire \RegFiles_inst/registers[7][8] ;
wire \RegFiles_inst/registers[7][7] ;
wire \RegFiles_inst/registers[7][6] ;
wire \RegFiles_inst/registers[7][5] ;
wire \RegFiles_inst/registers[7][4] ;
wire \RegFiles_inst/registers[7][3] ;
wire \RegFiles_inst/registers[7][2] ;
wire \RegFiles_inst/registers[7][1] ;
wire \RegFiles_inst/registers[7][0] ;
wire \RegFiles_inst/registers[8][31] ;
wire \RegFiles_inst/registers[8][30] ;
wire \RegFiles_inst/registers[8][29] ;
wire \RegFiles_inst/registers[8][28] ;
wire \RegFiles_inst/registers[8][27] ;
wire \RegFiles_inst/registers[8][26] ;
wire \RegFiles_inst/registers[8][25] ;
wire \RegFiles_inst/registers[8][24] ;
wire \RegFiles_inst/registers[8][23] ;
wire \RegFiles_inst/registers[8][22] ;
wire \RegFiles_inst/registers[8][21] ;
wire \RegFiles_inst/registers[8][20] ;
wire \RegFiles_inst/registers[8][19] ;
wire \RegFiles_inst/registers[8][18] ;
wire \RegFiles_inst/registers[8][17] ;
wire \RegFiles_inst/registers[8][16] ;
wire \RegFiles_inst/registers[8][15] ;
wire \RegFiles_inst/registers[8][14] ;
wire \RegFiles_inst/registers[8][13] ;
wire \RegFiles_inst/registers[8][12] ;
wire \RegFiles_inst/registers[8][11] ;
wire \RegFiles_inst/registers[8][10] ;
wire \RegFiles_inst/registers[8][9] ;
wire \RegFiles_inst/registers[8][8] ;
wire \RegFiles_inst/registers[8][7] ;
wire \RegFiles_inst/registers[8][6] ;
wire \RegFiles_inst/registers[8][5] ;
wire \RegFiles_inst/registers[8][4] ;
wire \RegFiles_inst/registers[8][3] ;
wire \RegFiles_inst/registers[8][2] ;
wire \RegFiles_inst/registers[8][1] ;
wire \RegFiles_inst/registers[8][0] ;
wire \ALU_inst/Result[31] ;
wire \ALU_inst/Result[30] ;
wire \ALU_inst/Result[29] ;
wire \ALU_inst/Result[28] ;
wire \ALU_inst/Result[27] ;
wire \ALU_inst/Result[26] ;
wire \ALU_inst/Result[25] ;
wire \ALU_inst/Result[24] ;
wire \ALU_inst/Result[23] ;
wire \ALU_inst/Result[22] ;
wire \ALU_inst/Result[21] ;
wire \ALU_inst/Result[20] ;
wire \ALU_inst/Result[19] ;
wire \ALU_inst/Result[18] ;
wire \ALU_inst/Result[17] ;
wire \ALU_inst/Result[16] ;
wire \ALU_inst/Result[15] ;
wire \ALU_inst/Result[14] ;
wire \ALU_inst/Result[13] ;
wire \ALU_inst/Result[12] ;
wire \ALU_inst/Result[11] ;
wire \ALU_inst/Result[10] ;
wire \ALU_inst/Result[9] ;
wire \ALU_inst/Result[8] ;
wire \ALU_inst/Result[7] ;
wire \ALU_inst/Result[6] ;
wire \ALU_inst/Result[5] ;
wire \ALU_inst/Result[4] ;
wire \ALU_inst/Result[3] ;
wire \ALU_inst/Result[2] ;
wire \ALU_inst/Result[1] ;
wire \ALU_inst/Result[0] ;
wire \RegFiles_inst/Write_Address[4] ;
wire \RegFiles_inst/Write_Address[3] ;
wire \RegFiles_inst/Write_Address[2] ;
wire \RegFiles_inst/Write_Address[1] ;
wire \RegFiles_inst/Write_Address[0] ;
wire \clk_inst/divided_clk ;
wire sys_clk;
wire tms_pad_i;
wire tck_pad_i;
wire tdi_pad_i;
wire tdo_pad_o;
wire tms_i_c;
wire tck_i_c;
wire tdi_i_c;
wire tdo_o_c;
wire [9:0] control0;
wire gao_jtag_tck;
wire gao_jtag_reset;
wire run_test_idle_er1;
wire run_test_idle_er2;
wire shift_dr_capture_dr;
wire update_dr;
wire pause_dr;
wire enable_er1;
wire enable_er2;
wire gao_jtag_tdi;
wire tdo_er1;

IBUF tms_ibuf (
    .I(tms_pad_i),
    .O(tms_i_c)
);

IBUF tck_ibuf (
    .I(tck_pad_i),
    .O(tck_i_c)
);

IBUF tdi_ibuf (
    .I(tdi_pad_i),
    .O(tdi_i_c)
);

OBUF tdo_obuf (
    .I(tdo_o_c),
    .O(tdo_pad_o)
);

GW_JTAG  u_gw_jtag(
    .tms_pad_i(tms_i_c),
    .tck_pad_i(tck_i_c),
    .tdi_pad_i(tdi_i_c),
    .tdo_pad_o(tdo_o_c),
    .tck_o(gao_jtag_tck),
    .test_logic_reset_o(gao_jtag_reset),
    .run_test_idle_er1_o(run_test_idle_er1),
    .run_test_idle_er2_o(run_test_idle_er2),
    .shift_dr_capture_dr_o(shift_dr_capture_dr),
    .update_dr_o(update_dr),
    .pause_dr_o(pause_dr),
    .enable_er1_o(enable_er1),
    .enable_er2_o(enable_er2),
    .tdi_o(gao_jtag_tdi),
    .tdo_er1_i(tdo_er1),
    .tdo_er2_i(1'b0)
);

gw_con_top  u_icon_top(
    .tck_i(gao_jtag_tck),
    .tdi_i(gao_jtag_tdi),
    .tdo_o(tdo_er1),
    .rst_i(gao_jtag_reset),
    .control0(control0[9:0]),
    .enable_i(enable_er1),
    .shift_dr_capture_dr_i(shift_dr_capture_dr),
    .update_dr_i(update_dr)
);

ao_top_0  u_la0_top(
    .control(control0[9:0]),
    .trig0_i(\clk_inst/divided_clk ),
    .trig1_i(\PC_Liet2_0/pc_out[0] ),
    .data_i({clk_in,\clk_inst/clk_mod[1] ,\clk_inst/clk_mod[0] ,\PC_Liet2_0/pc_out[25] ,\PC_Liet2_0/pc_out[24] ,\PC_Liet2_0/pc_out[23] ,\PC_Liet2_0/pc_out[22] ,\PC_Liet2_0/pc_out[21] ,\PC_Liet2_0/pc_out[20] ,\PC_Liet2_0/pc_out[19] ,\PC_Liet2_0/pc_out[18] ,\PC_Liet2_0/pc_out[17] ,\PC_Liet2_0/pc_out[16] ,\PC_Liet2_0/pc_out[15] ,\PC_Liet2_0/pc_out[14] ,\PC_Liet2_0/pc_out[13] ,\PC_Liet2_0/pc_out[12] ,\PC_Liet2_0/pc_out[11] ,\PC_Liet2_0/pc_out[10] ,\PC_Liet2_0/pc_out[9] ,\PC_Liet2_0/pc_out[8] ,\PC_Liet2_0/pc_out[7] ,\PC_Liet2_0/pc_out[6] ,\PC_Liet2_0/pc_out[5] ,\PC_Liet2_0/pc_out[4] ,\PC_Liet2_0/pc_out[3] ,\PC_Liet2_0/pc_out[2] ,\PC_Liet2_0/pc_out[1] ,\PC_Liet2_0/pc_out[0] ,\Mode[1] ,\Mode[0] ,\Opcode[3] ,\Opcode[2] ,\Opcode[1] ,\Opcode[0] ,\Destination[4] ,\Destination[3] ,\Destination[2] ,\Destination[1] ,\Destination[0] ,\Argument_A[4] ,\Argument_A[3] ,\Argument_A[2] ,\Argument_A[1] ,\Argument_A[0] ,\Argument_B[4] ,\Argument_B[3] ,\Argument_B[2] ,\Argument_B[1] ,\Argument_B[0] ,Is_Immedia,\Immediate[15] ,\Immediate[14] ,\Immediate[13] ,\Immediate[12] ,\Immediate[11] ,\Immediate[10] ,\Immediate[9] ,\Immediate[8] ,\Immediate[7] ,\Immediate[6] ,\Immediate[5] ,\Immediate[4] ,\Immediate[3] ,\Immediate[2] ,\Immediate[1] ,\Immediate[0] ,\INSTR[31] ,\INSTR[30] ,\INSTR[29] ,\INSTR[28] ,\INSTR[27] ,\INSTR[26] ,\INSTR[25] ,\INSTR[24] ,\INSTR[23] ,\INSTR[22] ,\INSTR[21] ,\INSTR[20] ,\INSTR[19] ,\INSTR[18] ,\INSTR[17] ,\INSTR[16] ,\INSTR[15] ,\INSTR[14] ,\INSTR[13] ,\INSTR[12] ,\INSTR[11] ,\INSTR[10] ,\INSTR[9] ,\INSTR[8] ,\INSTR[7] ,\INSTR[6] ,\INSTR[5] ,\INSTR[4] ,\INSTR[3] ,\INSTR[2] ,\INSTR[1] ,\INSTR[0] ,\RegFiles_inst/registers[0][31] ,\RegFiles_inst/registers[0][30] ,\RegFiles_inst/registers[0][29] ,\RegFiles_inst/registers[0][28] ,\RegFiles_inst/registers[0][27] ,\RegFiles_inst/registers[0][26] ,\RegFiles_inst/registers[0][25] ,\RegFiles_inst/registers[0][24] ,\RegFiles_inst/registers[0][23] ,\RegFiles_inst/registers[0][22] ,\RegFiles_inst/registers[0][21] ,\RegFiles_inst/registers[0][20] ,\RegFiles_inst/registers[0][19] ,\RegFiles_inst/registers[0][18] ,\RegFiles_inst/registers[0][17] ,\RegFiles_inst/registers[0][16] ,\RegFiles_inst/registers[0][15] ,\RegFiles_inst/registers[0][14] ,\RegFiles_inst/registers[0][13] ,\RegFiles_inst/registers[0][12] ,\RegFiles_inst/registers[0][11] ,\RegFiles_inst/registers[0][10] ,\RegFiles_inst/registers[0][9] ,\RegFiles_inst/registers[0][8] ,\RegFiles_inst/registers[0][7] ,\RegFiles_inst/registers[0][6] ,\RegFiles_inst/registers[0][5] ,\RegFiles_inst/registers[0][4] ,\RegFiles_inst/registers[0][3] ,\RegFiles_inst/registers[0][2] ,\RegFiles_inst/registers[0][1] ,\RegFiles_inst/registers[0][0] ,\RegFiles_inst/registers[1][31] ,\RegFiles_inst/registers[1][30] ,\RegFiles_inst/registers[1][29] ,\RegFiles_inst/registers[1][28] ,\RegFiles_inst/registers[1][27] ,\RegFiles_inst/registers[1][26] ,\RegFiles_inst/registers[1][25] ,\RegFiles_inst/registers[1][24] ,\RegFiles_inst/registers[1][23] ,\RegFiles_inst/registers[1][22] ,\RegFiles_inst/registers[1][21] ,\RegFiles_inst/registers[1][20] ,\RegFiles_inst/registers[1][19] ,\RegFiles_inst/registers[1][18] ,\RegFiles_inst/registers[1][17] ,\RegFiles_inst/registers[1][16] ,\RegFiles_inst/registers[1][15] ,\RegFiles_inst/registers[1][14] ,\RegFiles_inst/registers[1][13] ,\RegFiles_inst/registers[1][12] ,\RegFiles_inst/registers[1][11] ,\RegFiles_inst/registers[1][10] ,\RegFiles_inst/registers[1][9] ,\RegFiles_inst/registers[1][8] ,\RegFiles_inst/registers[1][7] ,\RegFiles_inst/registers[1][6] ,\RegFiles_inst/registers[1][5] ,\RegFiles_inst/registers[1][4] ,\RegFiles_inst/registers[1][3] ,\RegFiles_inst/registers[1][2] ,\RegFiles_inst/registers[1][1] ,\RegFiles_inst/registers[1][0] ,\RegFiles_inst/registers[2][31] ,\RegFiles_inst/registers[2][30] ,\RegFiles_inst/registers[2][29] ,\RegFiles_inst/registers[2][28] ,\RegFiles_inst/registers[2][27] ,\RegFiles_inst/registers[2][26] ,\RegFiles_inst/registers[2][25] ,\RegFiles_inst/registers[2][24] ,\RegFiles_inst/registers[2][23] ,\RegFiles_inst/registers[2][22] ,\RegFiles_inst/registers[2][21] ,\RegFiles_inst/registers[2][20] ,\RegFiles_inst/registers[2][19] ,\RegFiles_inst/registers[2][18] ,\RegFiles_inst/registers[2][17] ,\RegFiles_inst/registers[2][16] ,\RegFiles_inst/registers[2][15] ,\RegFiles_inst/registers[2][14] ,\RegFiles_inst/registers[2][13] ,\RegFiles_inst/registers[2][12] ,\RegFiles_inst/registers[2][11] ,\RegFiles_inst/registers[2][10] ,\RegFiles_inst/registers[2][9] ,\RegFiles_inst/registers[2][8] ,\RegFiles_inst/registers[2][7] ,\RegFiles_inst/registers[2][6] ,\RegFiles_inst/registers[2][5] ,\RegFiles_inst/registers[2][4] ,\RegFiles_inst/registers[2][3] ,\RegFiles_inst/registers[2][2] ,\RegFiles_inst/registers[2][1] ,\RegFiles_inst/registers[2][0] ,\RegFiles_inst/registers[3][31] ,\RegFiles_inst/registers[3][30] ,\RegFiles_inst/registers[3][29] ,\RegFiles_inst/registers[3][28] ,\RegFiles_inst/registers[3][27] ,\RegFiles_inst/registers[3][26] ,\RegFiles_inst/registers[3][25] ,\RegFiles_inst/registers[3][24] ,\RegFiles_inst/registers[3][23] ,\RegFiles_inst/registers[3][22] ,\RegFiles_inst/registers[3][21] ,\RegFiles_inst/registers[3][20] ,\RegFiles_inst/registers[3][19] ,\RegFiles_inst/registers[3][18] ,\RegFiles_inst/registers[3][17] ,\RegFiles_inst/registers[3][16] ,\RegFiles_inst/registers[3][15] ,\RegFiles_inst/registers[3][14] ,\RegFiles_inst/registers[3][13] ,\RegFiles_inst/registers[3][12] ,\RegFiles_inst/registers[3][11] ,\RegFiles_inst/registers[3][10] ,\RegFiles_inst/registers[3][9] ,\RegFiles_inst/registers[3][8] ,\RegFiles_inst/registers[3][7] ,\RegFiles_inst/registers[3][6] ,\RegFiles_inst/registers[3][5] ,\RegFiles_inst/registers[3][4] ,\RegFiles_inst/registers[3][3] ,\RegFiles_inst/registers[3][2] ,\RegFiles_inst/registers[3][1] ,\RegFiles_inst/registers[3][0] ,\RegFiles_inst/registers[4][31] ,\RegFiles_inst/registers[4][30] ,\RegFiles_inst/registers[4][29] ,\RegFiles_inst/registers[4][28] ,\RegFiles_inst/registers[4][27] ,\RegFiles_inst/registers[4][26] ,\RegFiles_inst/registers[4][25] ,\RegFiles_inst/registers[4][24] ,\RegFiles_inst/registers[4][23] ,\RegFiles_inst/registers[4][22] ,\RegFiles_inst/registers[4][21] ,\RegFiles_inst/registers[4][20] ,\RegFiles_inst/registers[4][19] ,\RegFiles_inst/registers[4][18] ,\RegFiles_inst/registers[4][17] ,\RegFiles_inst/registers[4][16] ,\RegFiles_inst/registers[4][15] ,\RegFiles_inst/registers[4][14] ,\RegFiles_inst/registers[4][13] ,\RegFiles_inst/registers[4][12] ,\RegFiles_inst/registers[4][11] ,\RegFiles_inst/registers[4][10] ,\RegFiles_inst/registers[4][9] ,\RegFiles_inst/registers[4][8] ,\RegFiles_inst/registers[4][7] ,\RegFiles_inst/registers[4][6] ,\RegFiles_inst/registers[4][5] ,\RegFiles_inst/registers[4][4] ,\RegFiles_inst/registers[4][3] ,\RegFiles_inst/registers[4][2] ,\RegFiles_inst/registers[4][1] ,\RegFiles_inst/registers[4][0] ,\RegFiles_inst/registers[5][31] ,\RegFiles_inst/registers[5][30] ,\RegFiles_inst/registers[5][29] ,\RegFiles_inst/registers[5][28] ,\RegFiles_inst/registers[5][27] ,\RegFiles_inst/registers[5][26] ,\RegFiles_inst/registers[5][25] ,\RegFiles_inst/registers[5][24] ,\RegFiles_inst/registers[5][23] ,\RegFiles_inst/registers[5][22] ,\RegFiles_inst/registers[5][21] ,\RegFiles_inst/registers[5][20] ,\RegFiles_inst/registers[5][19] ,\RegFiles_inst/registers[5][18] ,\RegFiles_inst/registers[5][17] ,\RegFiles_inst/registers[5][16] ,\RegFiles_inst/registers[5][15] ,\RegFiles_inst/registers[5][14] ,\RegFiles_inst/registers[5][13] ,\RegFiles_inst/registers[5][12] ,\RegFiles_inst/registers[5][11] ,\RegFiles_inst/registers[5][10] ,\RegFiles_inst/registers[5][9] ,\RegFiles_inst/registers[5][8] ,\RegFiles_inst/registers[5][7] ,\RegFiles_inst/registers[5][6] ,\RegFiles_inst/registers[5][5] ,\RegFiles_inst/registers[5][4] ,\RegFiles_inst/registers[5][3] ,\RegFiles_inst/registers[5][2] ,\RegFiles_inst/registers[5][1] ,\RegFiles_inst/registers[5][0] ,\RegFiles_inst/registers[6][31] ,\RegFiles_inst/registers[6][30] ,\RegFiles_inst/registers[6][29] ,\RegFiles_inst/registers[6][28] ,\RegFiles_inst/registers[6][27] ,\RegFiles_inst/registers[6][26] ,\RegFiles_inst/registers[6][25] ,\RegFiles_inst/registers[6][24] ,\RegFiles_inst/registers[6][23] ,\RegFiles_inst/registers[6][22] ,\RegFiles_inst/registers[6][21] ,\RegFiles_inst/registers[6][20] ,\RegFiles_inst/registers[6][19] ,\RegFiles_inst/registers[6][18] ,\RegFiles_inst/registers[6][17] ,\RegFiles_inst/registers[6][16] ,\RegFiles_inst/registers[6][15] ,\RegFiles_inst/registers[6][14] ,\RegFiles_inst/registers[6][13] ,\RegFiles_inst/registers[6][12] ,\RegFiles_inst/registers[6][11] ,\RegFiles_inst/registers[6][10] ,\RegFiles_inst/registers[6][9] ,\RegFiles_inst/registers[6][8] ,\RegFiles_inst/registers[6][7] ,\RegFiles_inst/registers[6][6] ,\RegFiles_inst/registers[6][5] ,\RegFiles_inst/registers[6][4] ,\RegFiles_inst/registers[6][3] ,\RegFiles_inst/registers[6][2] ,\RegFiles_inst/registers[6][1] ,\RegFiles_inst/registers[6][0] ,\RegFiles_inst/registers[7][31] ,\RegFiles_inst/registers[7][30] ,\RegFiles_inst/registers[7][29] ,\RegFiles_inst/registers[7][28] ,\RegFiles_inst/registers[7][27] ,\RegFiles_inst/registers[7][26] ,\RegFiles_inst/registers[7][25] ,\RegFiles_inst/registers[7][24] ,\RegFiles_inst/registers[7][23] ,\RegFiles_inst/registers[7][22] ,\RegFiles_inst/registers[7][21] ,\RegFiles_inst/registers[7][20] ,\RegFiles_inst/registers[7][19] ,\RegFiles_inst/registers[7][18] ,\RegFiles_inst/registers[7][17] ,\RegFiles_inst/registers[7][16] ,\RegFiles_inst/registers[7][15] ,\RegFiles_inst/registers[7][14] ,\RegFiles_inst/registers[7][13] ,\RegFiles_inst/registers[7][12] ,\RegFiles_inst/registers[7][11] ,\RegFiles_inst/registers[7][10] ,\RegFiles_inst/registers[7][9] ,\RegFiles_inst/registers[7][8] ,\RegFiles_inst/registers[7][7] ,\RegFiles_inst/registers[7][6] ,\RegFiles_inst/registers[7][5] ,\RegFiles_inst/registers[7][4] ,\RegFiles_inst/registers[7][3] ,\RegFiles_inst/registers[7][2] ,\RegFiles_inst/registers[7][1] ,\RegFiles_inst/registers[7][0] ,\RegFiles_inst/registers[8][31] ,\RegFiles_inst/registers[8][30] ,\RegFiles_inst/registers[8][29] ,\RegFiles_inst/registers[8][28] ,\RegFiles_inst/registers[8][27] ,\RegFiles_inst/registers[8][26] ,\RegFiles_inst/registers[8][25] ,\RegFiles_inst/registers[8][24] ,\RegFiles_inst/registers[8][23] ,\RegFiles_inst/registers[8][22] ,\RegFiles_inst/registers[8][21] ,\RegFiles_inst/registers[8][20] ,\RegFiles_inst/registers[8][19] ,\RegFiles_inst/registers[8][18] ,\RegFiles_inst/registers[8][17] ,\RegFiles_inst/registers[8][16] ,\RegFiles_inst/registers[8][15] ,\RegFiles_inst/registers[8][14] ,\RegFiles_inst/registers[8][13] ,\RegFiles_inst/registers[8][12] ,\RegFiles_inst/registers[8][11] ,\RegFiles_inst/registers[8][10] ,\RegFiles_inst/registers[8][9] ,\RegFiles_inst/registers[8][8] ,\RegFiles_inst/registers[8][7] ,\RegFiles_inst/registers[8][6] ,\RegFiles_inst/registers[8][5] ,\RegFiles_inst/registers[8][4] ,\RegFiles_inst/registers[8][3] ,\RegFiles_inst/registers[8][2] ,\RegFiles_inst/registers[8][1] ,\RegFiles_inst/registers[8][0] ,\ALU_inst/Result[31] ,\ALU_inst/Result[30] ,\ALU_inst/Result[29] ,\ALU_inst/Result[28] ,\ALU_inst/Result[27] ,\ALU_inst/Result[26] ,\ALU_inst/Result[25] ,\ALU_inst/Result[24] ,\ALU_inst/Result[23] ,\ALU_inst/Result[22] ,\ALU_inst/Result[21] ,\ALU_inst/Result[20] ,\ALU_inst/Result[19] ,\ALU_inst/Result[18] ,\ALU_inst/Result[17] ,\ALU_inst/Result[16] ,\ALU_inst/Result[15] ,\ALU_inst/Result[14] ,\ALU_inst/Result[13] ,\ALU_inst/Result[12] ,\ALU_inst/Result[11] ,\ALU_inst/Result[10] ,\ALU_inst/Result[9] ,\ALU_inst/Result[8] ,\ALU_inst/Result[7] ,\ALU_inst/Result[6] ,\ALU_inst/Result[5] ,\ALU_inst/Result[4] ,\ALU_inst/Result[3] ,\ALU_inst/Result[2] ,\ALU_inst/Result[1] ,\ALU_inst/Result[0] ,\RegFiles_inst/Write_Address[4] ,\RegFiles_inst/Write_Address[3] ,\RegFiles_inst/Write_Address[2] ,\RegFiles_inst/Write_Address[1] ,\RegFiles_inst/Write_Address[0] }),
    .clk_i(sys_clk)
);

endmodule
