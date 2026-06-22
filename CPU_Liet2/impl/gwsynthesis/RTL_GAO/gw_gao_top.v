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
    \WR_BUS[31] ,
    \WR_BUS[30] ,
    \WR_BUS[29] ,
    \WR_BUS[28] ,
    \WR_BUS[27] ,
    \WR_BUS[26] ,
    \WR_BUS[25] ,
    \WR_BUS[24] ,
    \WR_BUS[23] ,
    \WR_BUS[22] ,
    \WR_BUS[21] ,
    \WR_BUS[20] ,
    \WR_BUS[19] ,
    \WR_BUS[18] ,
    \WR_BUS[17] ,
    \WR_BUS[16] ,
    \WR_BUS[15] ,
    \WR_BUS[14] ,
    \WR_BUS[13] ,
    \WR_BUS[12] ,
    \WR_BUS[11] ,
    \WR_BUS[10] ,
    \WR_BUS[9] ,
    \WR_BUS[8] ,
    \WR_BUS[7] ,
    \WR_BUS[6] ,
    \WR_BUS[5] ,
    \WR_BUS[4] ,
    \WR_BUS[3] ,
    \WR_BUS[2] ,
    \WR_BUS[1] ,
    \WR_BUS[0] ,
    jump,
    \PC_Liet2_0/pc_in[31] ,
    \PC_Liet2_0/pc_in[30] ,
    \PC_Liet2_0/pc_in[29] ,
    \PC_Liet2_0/pc_in[28] ,
    \PC_Liet2_0/pc_in[27] ,
    \PC_Liet2_0/pc_in[26] ,
    \PC_Liet2_0/pc_in[25] ,
    \PC_Liet2_0/pc_in[24] ,
    \PC_Liet2_0/pc_in[23] ,
    \PC_Liet2_0/pc_in[22] ,
    \PC_Liet2_0/pc_in[21] ,
    \PC_Liet2_0/pc_in[20] ,
    \PC_Liet2_0/pc_in[19] ,
    \PC_Liet2_0/pc_in[18] ,
    \PC_Liet2_0/pc_in[17] ,
    \PC_Liet2_0/pc_in[16] ,
    \PC_Liet2_0/pc_in[15] ,
    \PC_Liet2_0/pc_in[14] ,
    \PC_Liet2_0/pc_in[13] ,
    \PC_Liet2_0/pc_in[12] ,
    \PC_Liet2_0/pc_in[11] ,
    \PC_Liet2_0/pc_in[10] ,
    \PC_Liet2_0/pc_in[9] ,
    \PC_Liet2_0/pc_in[8] ,
    \PC_Liet2_0/pc_in[7] ,
    \PC_Liet2_0/pc_in[6] ,
    \PC_Liet2_0/pc_in[5] ,
    \PC_Liet2_0/pc_in[4] ,
    \PC_Liet2_0/pc_in[3] ,
    \PC_Liet2_0/pc_in[2] ,
    \PC_Liet2_0/pc_in[1] ,
    \PC_Liet2_0/pc_in[0] ,
    \RAM_ADDR[31] ,
    \RAM_ADDR[30] ,
    \RAM_ADDR[29] ,
    \RAM_ADDR[28] ,
    \RAM_ADDR[27] ,
    \RAM_ADDR[26] ,
    \RAM_ADDR[25] ,
    \RAM_ADDR[24] ,
    \RAM_ADDR[23] ,
    \RAM_ADDR[22] ,
    \RAM_ADDR[21] ,
    \RAM_ADDR[20] ,
    \RAM_ADDR[19] ,
    \RAM_ADDR[18] ,
    \RAM_ADDR[17] ,
    \RAM_ADDR[16] ,
    \RAM_ADDR[15] ,
    \RAM_ADDR[14] ,
    \RAM_ADDR[13] ,
    \RAM_ADDR[12] ,
    \RAM_ADDR[11] ,
    \RAM_ADDR[10] ,
    \RAM_ADDR[9] ,
    \RAM_ADDR[8] ,
    \RAM_ADDR[7] ,
    \RAM_ADDR[6] ,
    \RAM_ADDR[5] ,
    \RAM_ADDR[4] ,
    \RAM_ADDR[3] ,
    \RAM_ADDR[2] ,
    \RAM_ADDR[1] ,
    \RAM_ADDR[0] ,
    \RAM_IN_DATA[31] ,
    \RAM_IN_DATA[30] ,
    \RAM_IN_DATA[29] ,
    \RAM_IN_DATA[28] ,
    \RAM_IN_DATA[27] ,
    \RAM_IN_DATA[26] ,
    \RAM_IN_DATA[25] ,
    \RAM_IN_DATA[24] ,
    \RAM_IN_DATA[23] ,
    \RAM_IN_DATA[22] ,
    \RAM_IN_DATA[21] ,
    \RAM_IN_DATA[20] ,
    \RAM_IN_DATA[19] ,
    \RAM_IN_DATA[18] ,
    \RAM_IN_DATA[17] ,
    \RAM_IN_DATA[16] ,
    \RAM_IN_DATA[15] ,
    \RAM_IN_DATA[14] ,
    \RAM_IN_DATA[13] ,
    \RAM_IN_DATA[12] ,
    \RAM_IN_DATA[11] ,
    \RAM_IN_DATA[10] ,
    \RAM_IN_DATA[9] ,
    \RAM_IN_DATA[8] ,
    \RAM_IN_DATA[7] ,
    \RAM_IN_DATA[6] ,
    \RAM_IN_DATA[5] ,
    \RAM_IN_DATA[4] ,
    \RAM_IN_DATA[3] ,
    \RAM_IN_DATA[2] ,
    \RAM_IN_DATA[1] ,
    \RAM_IN_DATA[0] ,
    \DP_inst/adb[9] ,
    \DP_inst/adb[8] ,
    \DP_inst/adb[7] ,
    \DP_inst/adb[6] ,
    \DP_inst/adb[5] ,
    \DP_inst/adb[4] ,
    \DP_inst/adb[3] ,
    \DP_inst/adb[2] ,
    \DP_inst/adb[1] ,
    \DP_inst/adb[0] ,
    \RAM_inst/RAM_RE ,
    \RAM_inst/RAM_WE ,
    JUMP_MODE,
    \RAM_inst/data_out[31] ,
    \RAM_inst/data_out[30] ,
    \RAM_inst/data_out[29] ,
    \RAM_inst/data_out[28] ,
    \RAM_inst/data_out[27] ,
    \RAM_inst/data_out[26] ,
    \RAM_inst/data_out[25] ,
    \RAM_inst/data_out[24] ,
    \RAM_inst/data_out[23] ,
    \RAM_inst/data_out[22] ,
    \RAM_inst/data_out[21] ,
    \RAM_inst/data_out[20] ,
    \RAM_inst/data_out[19] ,
    \RAM_inst/data_out[18] ,
    \RAM_inst/data_out[17] ,
    \RAM_inst/data_out[16] ,
    \RAM_inst/data_out[15] ,
    \RAM_inst/data_out[14] ,
    \RAM_inst/data_out[13] ,
    \RAM_inst/data_out[12] ,
    \RAM_inst/data_out[11] ,
    \RAM_inst/data_out[10] ,
    \RAM_inst/data_out[9] ,
    \RAM_inst/data_out[8] ,
    \RAM_inst/data_out[7] ,
    \RAM_inst/data_out[6] ,
    \RAM_inst/data_out[5] ,
    \RAM_inst/data_out[4] ,
    \RAM_inst/data_out[3] ,
    \RAM_inst/data_out[2] ,
    \RAM_inst/data_out[1] ,
    \RAM_inst/data_out[0] ,
    \RAM_inst/addr_in[31] ,
    \RAM_inst/addr_in[30] ,
    \RAM_inst/addr_in[29] ,
    \RAM_inst/addr_in[28] ,
    \RAM_inst/addr_in[27] ,
    \RAM_inst/addr_in[26] ,
    \RAM_inst/addr_in[25] ,
    \RAM_inst/addr_in[24] ,
    \RAM_inst/addr_in[23] ,
    \RAM_inst/addr_in[22] ,
    \RAM_inst/addr_in[21] ,
    \RAM_inst/addr_in[20] ,
    \RAM_inst/addr_in[19] ,
    \RAM_inst/addr_in[18] ,
    \RAM_inst/addr_in[17] ,
    \RAM_inst/addr_in[16] ,
    \RAM_inst/addr_in[15] ,
    \RAM_inst/addr_in[14] ,
    \RAM_inst/addr_in[13] ,
    \RAM_inst/addr_in[12] ,
    \RAM_inst/addr_in[11] ,
    \RAM_inst/addr_in[10] ,
    \RAM_inst/addr_in[9] ,
    \RAM_inst/addr_in[8] ,
    \RAM_inst/addr_in[7] ,
    \RAM_inst/addr_in[6] ,
    \RAM_inst/addr_in[5] ,
    \RAM_inst/addr_in[4] ,
    \RAM_inst/addr_in[3] ,
    \RAM_inst/addr_in[2] ,
    \RAM_inst/addr_in[1] ,
    \RAM_inst/addr_in[0] ,
    \RAM_OUT_DATA[31] ,
    \RAM_OUT_DATA[30] ,
    \RAM_OUT_DATA[29] ,
    \RAM_OUT_DATA[28] ,
    \RAM_OUT_DATA[27] ,
    \RAM_OUT_DATA[26] ,
    \RAM_OUT_DATA[25] ,
    \RAM_OUT_DATA[24] ,
    \RAM_OUT_DATA[23] ,
    \RAM_OUT_DATA[22] ,
    \RAM_OUT_DATA[21] ,
    \RAM_OUT_DATA[20] ,
    \RAM_OUT_DATA[19] ,
    \RAM_OUT_DATA[18] ,
    \RAM_OUT_DATA[17] ,
    \RAM_OUT_DATA[16] ,
    \RAM_OUT_DATA[15] ,
    \RAM_OUT_DATA[14] ,
    \RAM_OUT_DATA[13] ,
    \RAM_OUT_DATA[12] ,
    \RAM_OUT_DATA[11] ,
    \RAM_OUT_DATA[10] ,
    \RAM_OUT_DATA[9] ,
    \RAM_OUT_DATA[8] ,
    \RAM_OUT_DATA[7] ,
    \RAM_OUT_DATA[6] ,
    \RAM_OUT_DATA[5] ,
    \RAM_OUT_DATA[4] ,
    \RAM_OUT_DATA[3] ,
    \RAM_OUT_DATA[2] ,
    \RAM_OUT_DATA[1] ,
    \RAM_OUT_DATA[0] ,
    \WR_BUS_inst/ALU_Result[31] ,
    \WR_BUS_inst/ALU_Result[30] ,
    \WR_BUS_inst/ALU_Result[29] ,
    \WR_BUS_inst/ALU_Result[28] ,
    \WR_BUS_inst/ALU_Result[27] ,
    \WR_BUS_inst/ALU_Result[26] ,
    \WR_BUS_inst/ALU_Result[25] ,
    \WR_BUS_inst/ALU_Result[24] ,
    \WR_BUS_inst/ALU_Result[23] ,
    \WR_BUS_inst/ALU_Result[22] ,
    \WR_BUS_inst/ALU_Result[21] ,
    \WR_BUS_inst/ALU_Result[20] ,
    \WR_BUS_inst/ALU_Result[19] ,
    \WR_BUS_inst/ALU_Result[18] ,
    \WR_BUS_inst/ALU_Result[17] ,
    \WR_BUS_inst/ALU_Result[16] ,
    \WR_BUS_inst/ALU_Result[15] ,
    \WR_BUS_inst/ALU_Result[14] ,
    \WR_BUS_inst/ALU_Result[13] ,
    \WR_BUS_inst/ALU_Result[12] ,
    \WR_BUS_inst/ALU_Result[11] ,
    \WR_BUS_inst/ALU_Result[10] ,
    \WR_BUS_inst/ALU_Result[9] ,
    \WR_BUS_inst/ALU_Result[8] ,
    \WR_BUS_inst/ALU_Result[7] ,
    \WR_BUS_inst/ALU_Result[6] ,
    \WR_BUS_inst/ALU_Result[5] ,
    \WR_BUS_inst/ALU_Result[4] ,
    \WR_BUS_inst/ALU_Result[3] ,
    \WR_BUS_inst/ALU_Result[2] ,
    \WR_BUS_inst/ALU_Result[1] ,
    \WR_BUS_inst/ALU_Result[0] ,
    \WR_BUS_inst/RAM_out[31] ,
    \WR_BUS_inst/RAM_out[30] ,
    \WR_BUS_inst/RAM_out[29] ,
    \WR_BUS_inst/RAM_out[28] ,
    \WR_BUS_inst/RAM_out[27] ,
    \WR_BUS_inst/RAM_out[26] ,
    \WR_BUS_inst/RAM_out[25] ,
    \WR_BUS_inst/RAM_out[24] ,
    \WR_BUS_inst/RAM_out[23] ,
    \WR_BUS_inst/RAM_out[22] ,
    \WR_BUS_inst/RAM_out[21] ,
    \WR_BUS_inst/RAM_out[20] ,
    \WR_BUS_inst/RAM_out[19] ,
    \WR_BUS_inst/RAM_out[18] ,
    \WR_BUS_inst/RAM_out[17] ,
    \WR_BUS_inst/RAM_out[16] ,
    \WR_BUS_inst/RAM_out[15] ,
    \WR_BUS_inst/RAM_out[14] ,
    \WR_BUS_inst/RAM_out[13] ,
    \WR_BUS_inst/RAM_out[12] ,
    \WR_BUS_inst/RAM_out[11] ,
    \WR_BUS_inst/RAM_out[10] ,
    \WR_BUS_inst/RAM_out[9] ,
    \WR_BUS_inst/RAM_out[8] ,
    \WR_BUS_inst/RAM_out[7] ,
    \WR_BUS_inst/RAM_out[6] ,
    \WR_BUS_inst/RAM_out[5] ,
    \WR_BUS_inst/RAM_out[4] ,
    \WR_BUS_inst/RAM_out[3] ,
    \WR_BUS_inst/RAM_out[2] ,
    \WR_BUS_inst/RAM_out[1] ,
    \WR_BUS_inst/RAM_out[0] ,
    \WR_BUS_inst/mux_1 ,
    \IO_inst/DIO_OUT_EN ,
    \IO_inst/uart_inst/u_rx_fifo/empty ,
    \IO_inst/uart_inst/u_rx_fifo/w_data[7] ,
    \IO_inst/uart_inst/u_rx_fifo/w_data[6] ,
    \IO_inst/uart_inst/u_rx_fifo/w_data[5] ,
    \IO_inst/uart_inst/u_rx_fifo/w_data[4] ,
    \IO_inst/uart_inst/u_rx_fifo/w_data[3] ,
    \IO_inst/uart_inst/u_rx_fifo/w_data[2] ,
    \IO_inst/uart_inst/u_rx_fifo/w_data[1] ,
    \IO_inst/uart_inst/u_rx_fifo/w_data[0] ,
    \IO_inst/rx_data_out[7] ,
    \IO_inst/rx_data_out[6] ,
    \IO_inst/rx_data_out[5] ,
    \IO_inst/rx_data_out[4] ,
    \IO_inst/rx_data_out[3] ,
    \IO_inst/rx_data_out[2] ,
    \IO_inst/rx_data_out[1] ,
    \IO_inst/rx_data_out[0] ,
    \DIO_OUT[7] ,
    \DIO_OUT[6] ,
    \DIO_OUT[5] ,
    \DIO_OUT[4] ,
    \DIO_OUT[3] ,
    \DIO_OUT[2] ,
    \DIO_OUT[1] ,
    \DIO_OUT[0] ,
    \RegFiles_inst/registers[15][31] ,
    \RegFiles_inst/registers[15][30] ,
    \RegFiles_inst/registers[15][29] ,
    \RegFiles_inst/registers[15][28] ,
    \RegFiles_inst/registers[15][27] ,
    \RegFiles_inst/registers[15][26] ,
    \RegFiles_inst/registers[15][25] ,
    \RegFiles_inst/registers[15][24] ,
    \RegFiles_inst/registers[15][23] ,
    \RegFiles_inst/registers[15][22] ,
    \RegFiles_inst/registers[15][21] ,
    \RegFiles_inst/registers[15][20] ,
    \RegFiles_inst/registers[15][19] ,
    \RegFiles_inst/registers[15][18] ,
    \RegFiles_inst/registers[15][17] ,
    \RegFiles_inst/registers[15][16] ,
    \RegFiles_inst/registers[15][15] ,
    \RegFiles_inst/registers[15][14] ,
    \RegFiles_inst/registers[15][13] ,
    \RegFiles_inst/registers[15][12] ,
    \RegFiles_inst/registers[15][11] ,
    \RegFiles_inst/registers[15][10] ,
    \RegFiles_inst/registers[15][9] ,
    \RegFiles_inst/registers[15][8] ,
    \RegFiles_inst/registers[15][7] ,
    \RegFiles_inst/registers[15][6] ,
    \RegFiles_inst/registers[15][5] ,
    \RegFiles_inst/registers[15][4] ,
    \RegFiles_inst/registers[15][3] ,
    \RegFiles_inst/registers[15][2] ,
    \RegFiles_inst/registers[15][1] ,
    \RegFiles_inst/registers[15][0] ,
    \clk_inst/divided_clk ,
    \clk_inst/OSC_CLK ,
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
input \WR_BUS[31] ;
input \WR_BUS[30] ;
input \WR_BUS[29] ;
input \WR_BUS[28] ;
input \WR_BUS[27] ;
input \WR_BUS[26] ;
input \WR_BUS[25] ;
input \WR_BUS[24] ;
input \WR_BUS[23] ;
input \WR_BUS[22] ;
input \WR_BUS[21] ;
input \WR_BUS[20] ;
input \WR_BUS[19] ;
input \WR_BUS[18] ;
input \WR_BUS[17] ;
input \WR_BUS[16] ;
input \WR_BUS[15] ;
input \WR_BUS[14] ;
input \WR_BUS[13] ;
input \WR_BUS[12] ;
input \WR_BUS[11] ;
input \WR_BUS[10] ;
input \WR_BUS[9] ;
input \WR_BUS[8] ;
input \WR_BUS[7] ;
input \WR_BUS[6] ;
input \WR_BUS[5] ;
input \WR_BUS[4] ;
input \WR_BUS[3] ;
input \WR_BUS[2] ;
input \WR_BUS[1] ;
input \WR_BUS[0] ;
input jump;
input \PC_Liet2_0/pc_in[31] ;
input \PC_Liet2_0/pc_in[30] ;
input \PC_Liet2_0/pc_in[29] ;
input \PC_Liet2_0/pc_in[28] ;
input \PC_Liet2_0/pc_in[27] ;
input \PC_Liet2_0/pc_in[26] ;
input \PC_Liet2_0/pc_in[25] ;
input \PC_Liet2_0/pc_in[24] ;
input \PC_Liet2_0/pc_in[23] ;
input \PC_Liet2_0/pc_in[22] ;
input \PC_Liet2_0/pc_in[21] ;
input \PC_Liet2_0/pc_in[20] ;
input \PC_Liet2_0/pc_in[19] ;
input \PC_Liet2_0/pc_in[18] ;
input \PC_Liet2_0/pc_in[17] ;
input \PC_Liet2_0/pc_in[16] ;
input \PC_Liet2_0/pc_in[15] ;
input \PC_Liet2_0/pc_in[14] ;
input \PC_Liet2_0/pc_in[13] ;
input \PC_Liet2_0/pc_in[12] ;
input \PC_Liet2_0/pc_in[11] ;
input \PC_Liet2_0/pc_in[10] ;
input \PC_Liet2_0/pc_in[9] ;
input \PC_Liet2_0/pc_in[8] ;
input \PC_Liet2_0/pc_in[7] ;
input \PC_Liet2_0/pc_in[6] ;
input \PC_Liet2_0/pc_in[5] ;
input \PC_Liet2_0/pc_in[4] ;
input \PC_Liet2_0/pc_in[3] ;
input \PC_Liet2_0/pc_in[2] ;
input \PC_Liet2_0/pc_in[1] ;
input \PC_Liet2_0/pc_in[0] ;
input \RAM_ADDR[31] ;
input \RAM_ADDR[30] ;
input \RAM_ADDR[29] ;
input \RAM_ADDR[28] ;
input \RAM_ADDR[27] ;
input \RAM_ADDR[26] ;
input \RAM_ADDR[25] ;
input \RAM_ADDR[24] ;
input \RAM_ADDR[23] ;
input \RAM_ADDR[22] ;
input \RAM_ADDR[21] ;
input \RAM_ADDR[20] ;
input \RAM_ADDR[19] ;
input \RAM_ADDR[18] ;
input \RAM_ADDR[17] ;
input \RAM_ADDR[16] ;
input \RAM_ADDR[15] ;
input \RAM_ADDR[14] ;
input \RAM_ADDR[13] ;
input \RAM_ADDR[12] ;
input \RAM_ADDR[11] ;
input \RAM_ADDR[10] ;
input \RAM_ADDR[9] ;
input \RAM_ADDR[8] ;
input \RAM_ADDR[7] ;
input \RAM_ADDR[6] ;
input \RAM_ADDR[5] ;
input \RAM_ADDR[4] ;
input \RAM_ADDR[3] ;
input \RAM_ADDR[2] ;
input \RAM_ADDR[1] ;
input \RAM_ADDR[0] ;
input \RAM_IN_DATA[31] ;
input \RAM_IN_DATA[30] ;
input \RAM_IN_DATA[29] ;
input \RAM_IN_DATA[28] ;
input \RAM_IN_DATA[27] ;
input \RAM_IN_DATA[26] ;
input \RAM_IN_DATA[25] ;
input \RAM_IN_DATA[24] ;
input \RAM_IN_DATA[23] ;
input \RAM_IN_DATA[22] ;
input \RAM_IN_DATA[21] ;
input \RAM_IN_DATA[20] ;
input \RAM_IN_DATA[19] ;
input \RAM_IN_DATA[18] ;
input \RAM_IN_DATA[17] ;
input \RAM_IN_DATA[16] ;
input \RAM_IN_DATA[15] ;
input \RAM_IN_DATA[14] ;
input \RAM_IN_DATA[13] ;
input \RAM_IN_DATA[12] ;
input \RAM_IN_DATA[11] ;
input \RAM_IN_DATA[10] ;
input \RAM_IN_DATA[9] ;
input \RAM_IN_DATA[8] ;
input \RAM_IN_DATA[7] ;
input \RAM_IN_DATA[6] ;
input \RAM_IN_DATA[5] ;
input \RAM_IN_DATA[4] ;
input \RAM_IN_DATA[3] ;
input \RAM_IN_DATA[2] ;
input \RAM_IN_DATA[1] ;
input \RAM_IN_DATA[0] ;
input \DP_inst/adb[9] ;
input \DP_inst/adb[8] ;
input \DP_inst/adb[7] ;
input \DP_inst/adb[6] ;
input \DP_inst/adb[5] ;
input \DP_inst/adb[4] ;
input \DP_inst/adb[3] ;
input \DP_inst/adb[2] ;
input \DP_inst/adb[1] ;
input \DP_inst/adb[0] ;
input \RAM_inst/RAM_RE ;
input \RAM_inst/RAM_WE ;
input JUMP_MODE;
input \RAM_inst/data_out[31] ;
input \RAM_inst/data_out[30] ;
input \RAM_inst/data_out[29] ;
input \RAM_inst/data_out[28] ;
input \RAM_inst/data_out[27] ;
input \RAM_inst/data_out[26] ;
input \RAM_inst/data_out[25] ;
input \RAM_inst/data_out[24] ;
input \RAM_inst/data_out[23] ;
input \RAM_inst/data_out[22] ;
input \RAM_inst/data_out[21] ;
input \RAM_inst/data_out[20] ;
input \RAM_inst/data_out[19] ;
input \RAM_inst/data_out[18] ;
input \RAM_inst/data_out[17] ;
input \RAM_inst/data_out[16] ;
input \RAM_inst/data_out[15] ;
input \RAM_inst/data_out[14] ;
input \RAM_inst/data_out[13] ;
input \RAM_inst/data_out[12] ;
input \RAM_inst/data_out[11] ;
input \RAM_inst/data_out[10] ;
input \RAM_inst/data_out[9] ;
input \RAM_inst/data_out[8] ;
input \RAM_inst/data_out[7] ;
input \RAM_inst/data_out[6] ;
input \RAM_inst/data_out[5] ;
input \RAM_inst/data_out[4] ;
input \RAM_inst/data_out[3] ;
input \RAM_inst/data_out[2] ;
input \RAM_inst/data_out[1] ;
input \RAM_inst/data_out[0] ;
input \RAM_inst/addr_in[31] ;
input \RAM_inst/addr_in[30] ;
input \RAM_inst/addr_in[29] ;
input \RAM_inst/addr_in[28] ;
input \RAM_inst/addr_in[27] ;
input \RAM_inst/addr_in[26] ;
input \RAM_inst/addr_in[25] ;
input \RAM_inst/addr_in[24] ;
input \RAM_inst/addr_in[23] ;
input \RAM_inst/addr_in[22] ;
input \RAM_inst/addr_in[21] ;
input \RAM_inst/addr_in[20] ;
input \RAM_inst/addr_in[19] ;
input \RAM_inst/addr_in[18] ;
input \RAM_inst/addr_in[17] ;
input \RAM_inst/addr_in[16] ;
input \RAM_inst/addr_in[15] ;
input \RAM_inst/addr_in[14] ;
input \RAM_inst/addr_in[13] ;
input \RAM_inst/addr_in[12] ;
input \RAM_inst/addr_in[11] ;
input \RAM_inst/addr_in[10] ;
input \RAM_inst/addr_in[9] ;
input \RAM_inst/addr_in[8] ;
input \RAM_inst/addr_in[7] ;
input \RAM_inst/addr_in[6] ;
input \RAM_inst/addr_in[5] ;
input \RAM_inst/addr_in[4] ;
input \RAM_inst/addr_in[3] ;
input \RAM_inst/addr_in[2] ;
input \RAM_inst/addr_in[1] ;
input \RAM_inst/addr_in[0] ;
input \RAM_OUT_DATA[31] ;
input \RAM_OUT_DATA[30] ;
input \RAM_OUT_DATA[29] ;
input \RAM_OUT_DATA[28] ;
input \RAM_OUT_DATA[27] ;
input \RAM_OUT_DATA[26] ;
input \RAM_OUT_DATA[25] ;
input \RAM_OUT_DATA[24] ;
input \RAM_OUT_DATA[23] ;
input \RAM_OUT_DATA[22] ;
input \RAM_OUT_DATA[21] ;
input \RAM_OUT_DATA[20] ;
input \RAM_OUT_DATA[19] ;
input \RAM_OUT_DATA[18] ;
input \RAM_OUT_DATA[17] ;
input \RAM_OUT_DATA[16] ;
input \RAM_OUT_DATA[15] ;
input \RAM_OUT_DATA[14] ;
input \RAM_OUT_DATA[13] ;
input \RAM_OUT_DATA[12] ;
input \RAM_OUT_DATA[11] ;
input \RAM_OUT_DATA[10] ;
input \RAM_OUT_DATA[9] ;
input \RAM_OUT_DATA[8] ;
input \RAM_OUT_DATA[7] ;
input \RAM_OUT_DATA[6] ;
input \RAM_OUT_DATA[5] ;
input \RAM_OUT_DATA[4] ;
input \RAM_OUT_DATA[3] ;
input \RAM_OUT_DATA[2] ;
input \RAM_OUT_DATA[1] ;
input \RAM_OUT_DATA[0] ;
input \WR_BUS_inst/ALU_Result[31] ;
input \WR_BUS_inst/ALU_Result[30] ;
input \WR_BUS_inst/ALU_Result[29] ;
input \WR_BUS_inst/ALU_Result[28] ;
input \WR_BUS_inst/ALU_Result[27] ;
input \WR_BUS_inst/ALU_Result[26] ;
input \WR_BUS_inst/ALU_Result[25] ;
input \WR_BUS_inst/ALU_Result[24] ;
input \WR_BUS_inst/ALU_Result[23] ;
input \WR_BUS_inst/ALU_Result[22] ;
input \WR_BUS_inst/ALU_Result[21] ;
input \WR_BUS_inst/ALU_Result[20] ;
input \WR_BUS_inst/ALU_Result[19] ;
input \WR_BUS_inst/ALU_Result[18] ;
input \WR_BUS_inst/ALU_Result[17] ;
input \WR_BUS_inst/ALU_Result[16] ;
input \WR_BUS_inst/ALU_Result[15] ;
input \WR_BUS_inst/ALU_Result[14] ;
input \WR_BUS_inst/ALU_Result[13] ;
input \WR_BUS_inst/ALU_Result[12] ;
input \WR_BUS_inst/ALU_Result[11] ;
input \WR_BUS_inst/ALU_Result[10] ;
input \WR_BUS_inst/ALU_Result[9] ;
input \WR_BUS_inst/ALU_Result[8] ;
input \WR_BUS_inst/ALU_Result[7] ;
input \WR_BUS_inst/ALU_Result[6] ;
input \WR_BUS_inst/ALU_Result[5] ;
input \WR_BUS_inst/ALU_Result[4] ;
input \WR_BUS_inst/ALU_Result[3] ;
input \WR_BUS_inst/ALU_Result[2] ;
input \WR_BUS_inst/ALU_Result[1] ;
input \WR_BUS_inst/ALU_Result[0] ;
input \WR_BUS_inst/RAM_out[31] ;
input \WR_BUS_inst/RAM_out[30] ;
input \WR_BUS_inst/RAM_out[29] ;
input \WR_BUS_inst/RAM_out[28] ;
input \WR_BUS_inst/RAM_out[27] ;
input \WR_BUS_inst/RAM_out[26] ;
input \WR_BUS_inst/RAM_out[25] ;
input \WR_BUS_inst/RAM_out[24] ;
input \WR_BUS_inst/RAM_out[23] ;
input \WR_BUS_inst/RAM_out[22] ;
input \WR_BUS_inst/RAM_out[21] ;
input \WR_BUS_inst/RAM_out[20] ;
input \WR_BUS_inst/RAM_out[19] ;
input \WR_BUS_inst/RAM_out[18] ;
input \WR_BUS_inst/RAM_out[17] ;
input \WR_BUS_inst/RAM_out[16] ;
input \WR_BUS_inst/RAM_out[15] ;
input \WR_BUS_inst/RAM_out[14] ;
input \WR_BUS_inst/RAM_out[13] ;
input \WR_BUS_inst/RAM_out[12] ;
input \WR_BUS_inst/RAM_out[11] ;
input \WR_BUS_inst/RAM_out[10] ;
input \WR_BUS_inst/RAM_out[9] ;
input \WR_BUS_inst/RAM_out[8] ;
input \WR_BUS_inst/RAM_out[7] ;
input \WR_BUS_inst/RAM_out[6] ;
input \WR_BUS_inst/RAM_out[5] ;
input \WR_BUS_inst/RAM_out[4] ;
input \WR_BUS_inst/RAM_out[3] ;
input \WR_BUS_inst/RAM_out[2] ;
input \WR_BUS_inst/RAM_out[1] ;
input \WR_BUS_inst/RAM_out[0] ;
input \WR_BUS_inst/mux_1 ;
input \IO_inst/DIO_OUT_EN ;
input \IO_inst/uart_inst/u_rx_fifo/empty ;
input \IO_inst/uart_inst/u_rx_fifo/w_data[7] ;
input \IO_inst/uart_inst/u_rx_fifo/w_data[6] ;
input \IO_inst/uart_inst/u_rx_fifo/w_data[5] ;
input \IO_inst/uart_inst/u_rx_fifo/w_data[4] ;
input \IO_inst/uart_inst/u_rx_fifo/w_data[3] ;
input \IO_inst/uart_inst/u_rx_fifo/w_data[2] ;
input \IO_inst/uart_inst/u_rx_fifo/w_data[1] ;
input \IO_inst/uart_inst/u_rx_fifo/w_data[0] ;
input \IO_inst/rx_data_out[7] ;
input \IO_inst/rx_data_out[6] ;
input \IO_inst/rx_data_out[5] ;
input \IO_inst/rx_data_out[4] ;
input \IO_inst/rx_data_out[3] ;
input \IO_inst/rx_data_out[2] ;
input \IO_inst/rx_data_out[1] ;
input \IO_inst/rx_data_out[0] ;
input \DIO_OUT[7] ;
input \DIO_OUT[6] ;
input \DIO_OUT[5] ;
input \DIO_OUT[4] ;
input \DIO_OUT[3] ;
input \DIO_OUT[2] ;
input \DIO_OUT[1] ;
input \DIO_OUT[0] ;
input \RegFiles_inst/registers[15][31] ;
input \RegFiles_inst/registers[15][30] ;
input \RegFiles_inst/registers[15][29] ;
input \RegFiles_inst/registers[15][28] ;
input \RegFiles_inst/registers[15][27] ;
input \RegFiles_inst/registers[15][26] ;
input \RegFiles_inst/registers[15][25] ;
input \RegFiles_inst/registers[15][24] ;
input \RegFiles_inst/registers[15][23] ;
input \RegFiles_inst/registers[15][22] ;
input \RegFiles_inst/registers[15][21] ;
input \RegFiles_inst/registers[15][20] ;
input \RegFiles_inst/registers[15][19] ;
input \RegFiles_inst/registers[15][18] ;
input \RegFiles_inst/registers[15][17] ;
input \RegFiles_inst/registers[15][16] ;
input \RegFiles_inst/registers[15][15] ;
input \RegFiles_inst/registers[15][14] ;
input \RegFiles_inst/registers[15][13] ;
input \RegFiles_inst/registers[15][12] ;
input \RegFiles_inst/registers[15][11] ;
input \RegFiles_inst/registers[15][10] ;
input \RegFiles_inst/registers[15][9] ;
input \RegFiles_inst/registers[15][8] ;
input \RegFiles_inst/registers[15][7] ;
input \RegFiles_inst/registers[15][6] ;
input \RegFiles_inst/registers[15][5] ;
input \RegFiles_inst/registers[15][4] ;
input \RegFiles_inst/registers[15][3] ;
input \RegFiles_inst/registers[15][2] ;
input \RegFiles_inst/registers[15][1] ;
input \RegFiles_inst/registers[15][0] ;
input \clk_inst/divided_clk ;
input \clk_inst/OSC_CLK ;
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
wire \WR_BUS[31] ;
wire \WR_BUS[30] ;
wire \WR_BUS[29] ;
wire \WR_BUS[28] ;
wire \WR_BUS[27] ;
wire \WR_BUS[26] ;
wire \WR_BUS[25] ;
wire \WR_BUS[24] ;
wire \WR_BUS[23] ;
wire \WR_BUS[22] ;
wire \WR_BUS[21] ;
wire \WR_BUS[20] ;
wire \WR_BUS[19] ;
wire \WR_BUS[18] ;
wire \WR_BUS[17] ;
wire \WR_BUS[16] ;
wire \WR_BUS[15] ;
wire \WR_BUS[14] ;
wire \WR_BUS[13] ;
wire \WR_BUS[12] ;
wire \WR_BUS[11] ;
wire \WR_BUS[10] ;
wire \WR_BUS[9] ;
wire \WR_BUS[8] ;
wire \WR_BUS[7] ;
wire \WR_BUS[6] ;
wire \WR_BUS[5] ;
wire \WR_BUS[4] ;
wire \WR_BUS[3] ;
wire \WR_BUS[2] ;
wire \WR_BUS[1] ;
wire \WR_BUS[0] ;
wire jump;
wire \PC_Liet2_0/pc_in[31] ;
wire \PC_Liet2_0/pc_in[30] ;
wire \PC_Liet2_0/pc_in[29] ;
wire \PC_Liet2_0/pc_in[28] ;
wire \PC_Liet2_0/pc_in[27] ;
wire \PC_Liet2_0/pc_in[26] ;
wire \PC_Liet2_0/pc_in[25] ;
wire \PC_Liet2_0/pc_in[24] ;
wire \PC_Liet2_0/pc_in[23] ;
wire \PC_Liet2_0/pc_in[22] ;
wire \PC_Liet2_0/pc_in[21] ;
wire \PC_Liet2_0/pc_in[20] ;
wire \PC_Liet2_0/pc_in[19] ;
wire \PC_Liet2_0/pc_in[18] ;
wire \PC_Liet2_0/pc_in[17] ;
wire \PC_Liet2_0/pc_in[16] ;
wire \PC_Liet2_0/pc_in[15] ;
wire \PC_Liet2_0/pc_in[14] ;
wire \PC_Liet2_0/pc_in[13] ;
wire \PC_Liet2_0/pc_in[12] ;
wire \PC_Liet2_0/pc_in[11] ;
wire \PC_Liet2_0/pc_in[10] ;
wire \PC_Liet2_0/pc_in[9] ;
wire \PC_Liet2_0/pc_in[8] ;
wire \PC_Liet2_0/pc_in[7] ;
wire \PC_Liet2_0/pc_in[6] ;
wire \PC_Liet2_0/pc_in[5] ;
wire \PC_Liet2_0/pc_in[4] ;
wire \PC_Liet2_0/pc_in[3] ;
wire \PC_Liet2_0/pc_in[2] ;
wire \PC_Liet2_0/pc_in[1] ;
wire \PC_Liet2_0/pc_in[0] ;
wire \RAM_ADDR[31] ;
wire \RAM_ADDR[30] ;
wire \RAM_ADDR[29] ;
wire \RAM_ADDR[28] ;
wire \RAM_ADDR[27] ;
wire \RAM_ADDR[26] ;
wire \RAM_ADDR[25] ;
wire \RAM_ADDR[24] ;
wire \RAM_ADDR[23] ;
wire \RAM_ADDR[22] ;
wire \RAM_ADDR[21] ;
wire \RAM_ADDR[20] ;
wire \RAM_ADDR[19] ;
wire \RAM_ADDR[18] ;
wire \RAM_ADDR[17] ;
wire \RAM_ADDR[16] ;
wire \RAM_ADDR[15] ;
wire \RAM_ADDR[14] ;
wire \RAM_ADDR[13] ;
wire \RAM_ADDR[12] ;
wire \RAM_ADDR[11] ;
wire \RAM_ADDR[10] ;
wire \RAM_ADDR[9] ;
wire \RAM_ADDR[8] ;
wire \RAM_ADDR[7] ;
wire \RAM_ADDR[6] ;
wire \RAM_ADDR[5] ;
wire \RAM_ADDR[4] ;
wire \RAM_ADDR[3] ;
wire \RAM_ADDR[2] ;
wire \RAM_ADDR[1] ;
wire \RAM_ADDR[0] ;
wire \RAM_IN_DATA[31] ;
wire \RAM_IN_DATA[30] ;
wire \RAM_IN_DATA[29] ;
wire \RAM_IN_DATA[28] ;
wire \RAM_IN_DATA[27] ;
wire \RAM_IN_DATA[26] ;
wire \RAM_IN_DATA[25] ;
wire \RAM_IN_DATA[24] ;
wire \RAM_IN_DATA[23] ;
wire \RAM_IN_DATA[22] ;
wire \RAM_IN_DATA[21] ;
wire \RAM_IN_DATA[20] ;
wire \RAM_IN_DATA[19] ;
wire \RAM_IN_DATA[18] ;
wire \RAM_IN_DATA[17] ;
wire \RAM_IN_DATA[16] ;
wire \RAM_IN_DATA[15] ;
wire \RAM_IN_DATA[14] ;
wire \RAM_IN_DATA[13] ;
wire \RAM_IN_DATA[12] ;
wire \RAM_IN_DATA[11] ;
wire \RAM_IN_DATA[10] ;
wire \RAM_IN_DATA[9] ;
wire \RAM_IN_DATA[8] ;
wire \RAM_IN_DATA[7] ;
wire \RAM_IN_DATA[6] ;
wire \RAM_IN_DATA[5] ;
wire \RAM_IN_DATA[4] ;
wire \RAM_IN_DATA[3] ;
wire \RAM_IN_DATA[2] ;
wire \RAM_IN_DATA[1] ;
wire \RAM_IN_DATA[0] ;
wire \DP_inst/adb[9] ;
wire \DP_inst/adb[8] ;
wire \DP_inst/adb[7] ;
wire \DP_inst/adb[6] ;
wire \DP_inst/adb[5] ;
wire \DP_inst/adb[4] ;
wire \DP_inst/adb[3] ;
wire \DP_inst/adb[2] ;
wire \DP_inst/adb[1] ;
wire \DP_inst/adb[0] ;
wire \RAM_inst/RAM_RE ;
wire \RAM_inst/RAM_WE ;
wire JUMP_MODE;
wire \RAM_inst/data_out[31] ;
wire \RAM_inst/data_out[30] ;
wire \RAM_inst/data_out[29] ;
wire \RAM_inst/data_out[28] ;
wire \RAM_inst/data_out[27] ;
wire \RAM_inst/data_out[26] ;
wire \RAM_inst/data_out[25] ;
wire \RAM_inst/data_out[24] ;
wire \RAM_inst/data_out[23] ;
wire \RAM_inst/data_out[22] ;
wire \RAM_inst/data_out[21] ;
wire \RAM_inst/data_out[20] ;
wire \RAM_inst/data_out[19] ;
wire \RAM_inst/data_out[18] ;
wire \RAM_inst/data_out[17] ;
wire \RAM_inst/data_out[16] ;
wire \RAM_inst/data_out[15] ;
wire \RAM_inst/data_out[14] ;
wire \RAM_inst/data_out[13] ;
wire \RAM_inst/data_out[12] ;
wire \RAM_inst/data_out[11] ;
wire \RAM_inst/data_out[10] ;
wire \RAM_inst/data_out[9] ;
wire \RAM_inst/data_out[8] ;
wire \RAM_inst/data_out[7] ;
wire \RAM_inst/data_out[6] ;
wire \RAM_inst/data_out[5] ;
wire \RAM_inst/data_out[4] ;
wire \RAM_inst/data_out[3] ;
wire \RAM_inst/data_out[2] ;
wire \RAM_inst/data_out[1] ;
wire \RAM_inst/data_out[0] ;
wire \RAM_inst/addr_in[31] ;
wire \RAM_inst/addr_in[30] ;
wire \RAM_inst/addr_in[29] ;
wire \RAM_inst/addr_in[28] ;
wire \RAM_inst/addr_in[27] ;
wire \RAM_inst/addr_in[26] ;
wire \RAM_inst/addr_in[25] ;
wire \RAM_inst/addr_in[24] ;
wire \RAM_inst/addr_in[23] ;
wire \RAM_inst/addr_in[22] ;
wire \RAM_inst/addr_in[21] ;
wire \RAM_inst/addr_in[20] ;
wire \RAM_inst/addr_in[19] ;
wire \RAM_inst/addr_in[18] ;
wire \RAM_inst/addr_in[17] ;
wire \RAM_inst/addr_in[16] ;
wire \RAM_inst/addr_in[15] ;
wire \RAM_inst/addr_in[14] ;
wire \RAM_inst/addr_in[13] ;
wire \RAM_inst/addr_in[12] ;
wire \RAM_inst/addr_in[11] ;
wire \RAM_inst/addr_in[10] ;
wire \RAM_inst/addr_in[9] ;
wire \RAM_inst/addr_in[8] ;
wire \RAM_inst/addr_in[7] ;
wire \RAM_inst/addr_in[6] ;
wire \RAM_inst/addr_in[5] ;
wire \RAM_inst/addr_in[4] ;
wire \RAM_inst/addr_in[3] ;
wire \RAM_inst/addr_in[2] ;
wire \RAM_inst/addr_in[1] ;
wire \RAM_inst/addr_in[0] ;
wire \RAM_OUT_DATA[31] ;
wire \RAM_OUT_DATA[30] ;
wire \RAM_OUT_DATA[29] ;
wire \RAM_OUT_DATA[28] ;
wire \RAM_OUT_DATA[27] ;
wire \RAM_OUT_DATA[26] ;
wire \RAM_OUT_DATA[25] ;
wire \RAM_OUT_DATA[24] ;
wire \RAM_OUT_DATA[23] ;
wire \RAM_OUT_DATA[22] ;
wire \RAM_OUT_DATA[21] ;
wire \RAM_OUT_DATA[20] ;
wire \RAM_OUT_DATA[19] ;
wire \RAM_OUT_DATA[18] ;
wire \RAM_OUT_DATA[17] ;
wire \RAM_OUT_DATA[16] ;
wire \RAM_OUT_DATA[15] ;
wire \RAM_OUT_DATA[14] ;
wire \RAM_OUT_DATA[13] ;
wire \RAM_OUT_DATA[12] ;
wire \RAM_OUT_DATA[11] ;
wire \RAM_OUT_DATA[10] ;
wire \RAM_OUT_DATA[9] ;
wire \RAM_OUT_DATA[8] ;
wire \RAM_OUT_DATA[7] ;
wire \RAM_OUT_DATA[6] ;
wire \RAM_OUT_DATA[5] ;
wire \RAM_OUT_DATA[4] ;
wire \RAM_OUT_DATA[3] ;
wire \RAM_OUT_DATA[2] ;
wire \RAM_OUT_DATA[1] ;
wire \RAM_OUT_DATA[0] ;
wire \WR_BUS_inst/ALU_Result[31] ;
wire \WR_BUS_inst/ALU_Result[30] ;
wire \WR_BUS_inst/ALU_Result[29] ;
wire \WR_BUS_inst/ALU_Result[28] ;
wire \WR_BUS_inst/ALU_Result[27] ;
wire \WR_BUS_inst/ALU_Result[26] ;
wire \WR_BUS_inst/ALU_Result[25] ;
wire \WR_BUS_inst/ALU_Result[24] ;
wire \WR_BUS_inst/ALU_Result[23] ;
wire \WR_BUS_inst/ALU_Result[22] ;
wire \WR_BUS_inst/ALU_Result[21] ;
wire \WR_BUS_inst/ALU_Result[20] ;
wire \WR_BUS_inst/ALU_Result[19] ;
wire \WR_BUS_inst/ALU_Result[18] ;
wire \WR_BUS_inst/ALU_Result[17] ;
wire \WR_BUS_inst/ALU_Result[16] ;
wire \WR_BUS_inst/ALU_Result[15] ;
wire \WR_BUS_inst/ALU_Result[14] ;
wire \WR_BUS_inst/ALU_Result[13] ;
wire \WR_BUS_inst/ALU_Result[12] ;
wire \WR_BUS_inst/ALU_Result[11] ;
wire \WR_BUS_inst/ALU_Result[10] ;
wire \WR_BUS_inst/ALU_Result[9] ;
wire \WR_BUS_inst/ALU_Result[8] ;
wire \WR_BUS_inst/ALU_Result[7] ;
wire \WR_BUS_inst/ALU_Result[6] ;
wire \WR_BUS_inst/ALU_Result[5] ;
wire \WR_BUS_inst/ALU_Result[4] ;
wire \WR_BUS_inst/ALU_Result[3] ;
wire \WR_BUS_inst/ALU_Result[2] ;
wire \WR_BUS_inst/ALU_Result[1] ;
wire \WR_BUS_inst/ALU_Result[0] ;
wire \WR_BUS_inst/RAM_out[31] ;
wire \WR_BUS_inst/RAM_out[30] ;
wire \WR_BUS_inst/RAM_out[29] ;
wire \WR_BUS_inst/RAM_out[28] ;
wire \WR_BUS_inst/RAM_out[27] ;
wire \WR_BUS_inst/RAM_out[26] ;
wire \WR_BUS_inst/RAM_out[25] ;
wire \WR_BUS_inst/RAM_out[24] ;
wire \WR_BUS_inst/RAM_out[23] ;
wire \WR_BUS_inst/RAM_out[22] ;
wire \WR_BUS_inst/RAM_out[21] ;
wire \WR_BUS_inst/RAM_out[20] ;
wire \WR_BUS_inst/RAM_out[19] ;
wire \WR_BUS_inst/RAM_out[18] ;
wire \WR_BUS_inst/RAM_out[17] ;
wire \WR_BUS_inst/RAM_out[16] ;
wire \WR_BUS_inst/RAM_out[15] ;
wire \WR_BUS_inst/RAM_out[14] ;
wire \WR_BUS_inst/RAM_out[13] ;
wire \WR_BUS_inst/RAM_out[12] ;
wire \WR_BUS_inst/RAM_out[11] ;
wire \WR_BUS_inst/RAM_out[10] ;
wire \WR_BUS_inst/RAM_out[9] ;
wire \WR_BUS_inst/RAM_out[8] ;
wire \WR_BUS_inst/RAM_out[7] ;
wire \WR_BUS_inst/RAM_out[6] ;
wire \WR_BUS_inst/RAM_out[5] ;
wire \WR_BUS_inst/RAM_out[4] ;
wire \WR_BUS_inst/RAM_out[3] ;
wire \WR_BUS_inst/RAM_out[2] ;
wire \WR_BUS_inst/RAM_out[1] ;
wire \WR_BUS_inst/RAM_out[0] ;
wire \WR_BUS_inst/mux_1 ;
wire \IO_inst/DIO_OUT_EN ;
wire \IO_inst/uart_inst/u_rx_fifo/empty ;
wire \IO_inst/uart_inst/u_rx_fifo/w_data[7] ;
wire \IO_inst/uart_inst/u_rx_fifo/w_data[6] ;
wire \IO_inst/uart_inst/u_rx_fifo/w_data[5] ;
wire \IO_inst/uart_inst/u_rx_fifo/w_data[4] ;
wire \IO_inst/uart_inst/u_rx_fifo/w_data[3] ;
wire \IO_inst/uart_inst/u_rx_fifo/w_data[2] ;
wire \IO_inst/uart_inst/u_rx_fifo/w_data[1] ;
wire \IO_inst/uart_inst/u_rx_fifo/w_data[0] ;
wire \IO_inst/rx_data_out[7] ;
wire \IO_inst/rx_data_out[6] ;
wire \IO_inst/rx_data_out[5] ;
wire \IO_inst/rx_data_out[4] ;
wire \IO_inst/rx_data_out[3] ;
wire \IO_inst/rx_data_out[2] ;
wire \IO_inst/rx_data_out[1] ;
wire \IO_inst/rx_data_out[0] ;
wire \DIO_OUT[7] ;
wire \DIO_OUT[6] ;
wire \DIO_OUT[5] ;
wire \DIO_OUT[4] ;
wire \DIO_OUT[3] ;
wire \DIO_OUT[2] ;
wire \DIO_OUT[1] ;
wire \DIO_OUT[0] ;
wire \RegFiles_inst/registers[15][31] ;
wire \RegFiles_inst/registers[15][30] ;
wire \RegFiles_inst/registers[15][29] ;
wire \RegFiles_inst/registers[15][28] ;
wire \RegFiles_inst/registers[15][27] ;
wire \RegFiles_inst/registers[15][26] ;
wire \RegFiles_inst/registers[15][25] ;
wire \RegFiles_inst/registers[15][24] ;
wire \RegFiles_inst/registers[15][23] ;
wire \RegFiles_inst/registers[15][22] ;
wire \RegFiles_inst/registers[15][21] ;
wire \RegFiles_inst/registers[15][20] ;
wire \RegFiles_inst/registers[15][19] ;
wire \RegFiles_inst/registers[15][18] ;
wire \RegFiles_inst/registers[15][17] ;
wire \RegFiles_inst/registers[15][16] ;
wire \RegFiles_inst/registers[15][15] ;
wire \RegFiles_inst/registers[15][14] ;
wire \RegFiles_inst/registers[15][13] ;
wire \RegFiles_inst/registers[15][12] ;
wire \RegFiles_inst/registers[15][11] ;
wire \RegFiles_inst/registers[15][10] ;
wire \RegFiles_inst/registers[15][9] ;
wire \RegFiles_inst/registers[15][8] ;
wire \RegFiles_inst/registers[15][7] ;
wire \RegFiles_inst/registers[15][6] ;
wire \RegFiles_inst/registers[15][5] ;
wire \RegFiles_inst/registers[15][4] ;
wire \RegFiles_inst/registers[15][3] ;
wire \RegFiles_inst/registers[15][2] ;
wire \RegFiles_inst/registers[15][1] ;
wire \RegFiles_inst/registers[15][0] ;
wire \clk_inst/divided_clk ;
wire \clk_inst/OSC_CLK ;
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
    .trig0_i({\clk_inst/divided_clk ,\clk_inst/OSC_CLK }),
    .trig1_i(\PC_Liet2_0/pc_out[0] ),
    .data_i({clk_in,\clk_inst/clk_mod[1] ,\clk_inst/clk_mod[0] ,\PC_Liet2_0/pc_out[25] ,\PC_Liet2_0/pc_out[24] ,\PC_Liet2_0/pc_out[23] ,\PC_Liet2_0/pc_out[22] ,\PC_Liet2_0/pc_out[21] ,\PC_Liet2_0/pc_out[20] ,\PC_Liet2_0/pc_out[19] ,\PC_Liet2_0/pc_out[18] ,\PC_Liet2_0/pc_out[17] ,\PC_Liet2_0/pc_out[16] ,\PC_Liet2_0/pc_out[15] ,\PC_Liet2_0/pc_out[14] ,\PC_Liet2_0/pc_out[13] ,\PC_Liet2_0/pc_out[12] ,\PC_Liet2_0/pc_out[11] ,\PC_Liet2_0/pc_out[10] ,\PC_Liet2_0/pc_out[9] ,\PC_Liet2_0/pc_out[8] ,\PC_Liet2_0/pc_out[7] ,\PC_Liet2_0/pc_out[6] ,\PC_Liet2_0/pc_out[5] ,\PC_Liet2_0/pc_out[4] ,\PC_Liet2_0/pc_out[3] ,\PC_Liet2_0/pc_out[2] ,\PC_Liet2_0/pc_out[1] ,\PC_Liet2_0/pc_out[0] ,\Mode[1] ,\Mode[0] ,\Opcode[3] ,\Opcode[2] ,\Opcode[1] ,\Opcode[0] ,Is_Immedia,\Immediate[15] ,\Immediate[14] ,\Immediate[13] ,\Immediate[12] ,\Immediate[11] ,\Immediate[10] ,\Immediate[9] ,\Immediate[8] ,\Immediate[7] ,\Immediate[6] ,\Immediate[5] ,\Immediate[4] ,\Immediate[3] ,\Immediate[2] ,\Immediate[1] ,\Immediate[0] ,\INSTR[31] ,\INSTR[30] ,\INSTR[29] ,\INSTR[28] ,\INSTR[27] ,\INSTR[26] ,\INSTR[25] ,\INSTR[24] ,\INSTR[23] ,\INSTR[22] ,\INSTR[21] ,\INSTR[20] ,\INSTR[19] ,\INSTR[18] ,\INSTR[17] ,\INSTR[16] ,\INSTR[15] ,\INSTR[14] ,\INSTR[13] ,\INSTR[12] ,\INSTR[11] ,\INSTR[10] ,\INSTR[9] ,\INSTR[8] ,\INSTR[7] ,\INSTR[6] ,\INSTR[5] ,\INSTR[4] ,\INSTR[3] ,\INSTR[2] ,\INSTR[1] ,\INSTR[0] ,\RegFiles_inst/registers[0][31] ,\RegFiles_inst/registers[0][30] ,\RegFiles_inst/registers[0][29] ,\RegFiles_inst/registers[0][28] ,\RegFiles_inst/registers[0][27] ,\RegFiles_inst/registers[0][26] ,\RegFiles_inst/registers[0][25] ,\RegFiles_inst/registers[0][24] ,\RegFiles_inst/registers[0][23] ,\RegFiles_inst/registers[0][22] ,\RegFiles_inst/registers[0][21] ,\RegFiles_inst/registers[0][20] ,\RegFiles_inst/registers[0][19] ,\RegFiles_inst/registers[0][18] ,\RegFiles_inst/registers[0][17] ,\RegFiles_inst/registers[0][16] ,\RegFiles_inst/registers[0][15] ,\RegFiles_inst/registers[0][14] ,\RegFiles_inst/registers[0][13] ,\RegFiles_inst/registers[0][12] ,\RegFiles_inst/registers[0][11] ,\RegFiles_inst/registers[0][10] ,\RegFiles_inst/registers[0][9] ,\RegFiles_inst/registers[0][8] ,\RegFiles_inst/registers[0][7] ,\RegFiles_inst/registers[0][6] ,\RegFiles_inst/registers[0][5] ,\RegFiles_inst/registers[0][4] ,\RegFiles_inst/registers[0][3] ,\RegFiles_inst/registers[0][2] ,\RegFiles_inst/registers[0][1] ,\RegFiles_inst/registers[0][0] ,\RegFiles_inst/registers[1][31] ,\RegFiles_inst/registers[1][30] ,\RegFiles_inst/registers[1][29] ,\RegFiles_inst/registers[1][28] ,\RegFiles_inst/registers[1][27] ,\RegFiles_inst/registers[1][26] ,\RegFiles_inst/registers[1][25] ,\RegFiles_inst/registers[1][24] ,\RegFiles_inst/registers[1][23] ,\RegFiles_inst/registers[1][22] ,\RegFiles_inst/registers[1][21] ,\RegFiles_inst/registers[1][20] ,\RegFiles_inst/registers[1][19] ,\RegFiles_inst/registers[1][18] ,\RegFiles_inst/registers[1][17] ,\RegFiles_inst/registers[1][16] ,\RegFiles_inst/registers[1][15] ,\RegFiles_inst/registers[1][14] ,\RegFiles_inst/registers[1][13] ,\RegFiles_inst/registers[1][12] ,\RegFiles_inst/registers[1][11] ,\RegFiles_inst/registers[1][10] ,\RegFiles_inst/registers[1][9] ,\RegFiles_inst/registers[1][8] ,\RegFiles_inst/registers[1][7] ,\RegFiles_inst/registers[1][6] ,\RegFiles_inst/registers[1][5] ,\RegFiles_inst/registers[1][4] ,\RegFiles_inst/registers[1][3] ,\RegFiles_inst/registers[1][2] ,\RegFiles_inst/registers[1][1] ,\RegFiles_inst/registers[1][0] ,\RegFiles_inst/registers[2][31] ,\RegFiles_inst/registers[2][30] ,\RegFiles_inst/registers[2][29] ,\RegFiles_inst/registers[2][28] ,\RegFiles_inst/registers[2][27] ,\RegFiles_inst/registers[2][26] ,\RegFiles_inst/registers[2][25] ,\RegFiles_inst/registers[2][24] ,\RegFiles_inst/registers[2][23] ,\RegFiles_inst/registers[2][22] ,\RegFiles_inst/registers[2][21] ,\RegFiles_inst/registers[2][20] ,\RegFiles_inst/registers[2][19] ,\RegFiles_inst/registers[2][18] ,\RegFiles_inst/registers[2][17] ,\RegFiles_inst/registers[2][16] ,\RegFiles_inst/registers[2][15] ,\RegFiles_inst/registers[2][14] ,\RegFiles_inst/registers[2][13] ,\RegFiles_inst/registers[2][12] ,\RegFiles_inst/registers[2][11] ,\RegFiles_inst/registers[2][10] ,\RegFiles_inst/registers[2][9] ,\RegFiles_inst/registers[2][8] ,\RegFiles_inst/registers[2][7] ,\RegFiles_inst/registers[2][6] ,\RegFiles_inst/registers[2][5] ,\RegFiles_inst/registers[2][4] ,\RegFiles_inst/registers[2][3] ,\RegFiles_inst/registers[2][2] ,\RegFiles_inst/registers[2][1] ,\RegFiles_inst/registers[2][0] ,\RegFiles_inst/registers[3][31] ,\RegFiles_inst/registers[3][30] ,\RegFiles_inst/registers[3][29] ,\RegFiles_inst/registers[3][28] ,\RegFiles_inst/registers[3][27] ,\RegFiles_inst/registers[3][26] ,\RegFiles_inst/registers[3][25] ,\RegFiles_inst/registers[3][24] ,\RegFiles_inst/registers[3][23] ,\RegFiles_inst/registers[3][22] ,\RegFiles_inst/registers[3][21] ,\RegFiles_inst/registers[3][20] ,\RegFiles_inst/registers[3][19] ,\RegFiles_inst/registers[3][18] ,\RegFiles_inst/registers[3][17] ,\RegFiles_inst/registers[3][16] ,\RegFiles_inst/registers[3][15] ,\RegFiles_inst/registers[3][14] ,\RegFiles_inst/registers[3][13] ,\RegFiles_inst/registers[3][12] ,\RegFiles_inst/registers[3][11] ,\RegFiles_inst/registers[3][10] ,\RegFiles_inst/registers[3][9] ,\RegFiles_inst/registers[3][8] ,\RegFiles_inst/registers[3][7] ,\RegFiles_inst/registers[3][6] ,\RegFiles_inst/registers[3][5] ,\RegFiles_inst/registers[3][4] ,\RegFiles_inst/registers[3][3] ,\RegFiles_inst/registers[3][2] ,\RegFiles_inst/registers[3][1] ,\RegFiles_inst/registers[3][0] ,\RegFiles_inst/registers[4][31] ,\RegFiles_inst/registers[4][30] ,\RegFiles_inst/registers[4][29] ,\RegFiles_inst/registers[4][28] ,\RegFiles_inst/registers[4][27] ,\RegFiles_inst/registers[4][26] ,\RegFiles_inst/registers[4][25] ,\RegFiles_inst/registers[4][24] ,\RegFiles_inst/registers[4][23] ,\RegFiles_inst/registers[4][22] ,\RegFiles_inst/registers[4][21] ,\RegFiles_inst/registers[4][20] ,\RegFiles_inst/registers[4][19] ,\RegFiles_inst/registers[4][18] ,\RegFiles_inst/registers[4][17] ,\RegFiles_inst/registers[4][16] ,\RegFiles_inst/registers[4][15] ,\RegFiles_inst/registers[4][14] ,\RegFiles_inst/registers[4][13] ,\RegFiles_inst/registers[4][12] ,\RegFiles_inst/registers[4][11] ,\RegFiles_inst/registers[4][10] ,\RegFiles_inst/registers[4][9] ,\RegFiles_inst/registers[4][8] ,\RegFiles_inst/registers[4][7] ,\RegFiles_inst/registers[4][6] ,\RegFiles_inst/registers[4][5] ,\RegFiles_inst/registers[4][4] ,\RegFiles_inst/registers[4][3] ,\RegFiles_inst/registers[4][2] ,\RegFiles_inst/registers[4][1] ,\RegFiles_inst/registers[4][0] ,\RegFiles_inst/registers[5][31] ,\RegFiles_inst/registers[5][30] ,\RegFiles_inst/registers[5][29] ,\RegFiles_inst/registers[5][28] ,\RegFiles_inst/registers[5][27] ,\RegFiles_inst/registers[5][26] ,\RegFiles_inst/registers[5][25] ,\RegFiles_inst/registers[5][24] ,\RegFiles_inst/registers[5][23] ,\RegFiles_inst/registers[5][22] ,\RegFiles_inst/registers[5][21] ,\RegFiles_inst/registers[5][20] ,\RegFiles_inst/registers[5][19] ,\RegFiles_inst/registers[5][18] ,\RegFiles_inst/registers[5][17] ,\RegFiles_inst/registers[5][16] ,\RegFiles_inst/registers[5][15] ,\RegFiles_inst/registers[5][14] ,\RegFiles_inst/registers[5][13] ,\RegFiles_inst/registers[5][12] ,\RegFiles_inst/registers[5][11] ,\RegFiles_inst/registers[5][10] ,\RegFiles_inst/registers[5][9] ,\RegFiles_inst/registers[5][8] ,\RegFiles_inst/registers[5][7] ,\RegFiles_inst/registers[5][6] ,\RegFiles_inst/registers[5][5] ,\RegFiles_inst/registers[5][4] ,\RegFiles_inst/registers[5][3] ,\RegFiles_inst/registers[5][2] ,\RegFiles_inst/registers[5][1] ,\RegFiles_inst/registers[5][0] ,\RegFiles_inst/registers[6][31] ,\RegFiles_inst/registers[6][30] ,\RegFiles_inst/registers[6][29] ,\RegFiles_inst/registers[6][28] ,\RegFiles_inst/registers[6][27] ,\RegFiles_inst/registers[6][26] ,\RegFiles_inst/registers[6][25] ,\RegFiles_inst/registers[6][24] ,\RegFiles_inst/registers[6][23] ,\RegFiles_inst/registers[6][22] ,\RegFiles_inst/registers[6][21] ,\RegFiles_inst/registers[6][20] ,\RegFiles_inst/registers[6][19] ,\RegFiles_inst/registers[6][18] ,\RegFiles_inst/registers[6][17] ,\RegFiles_inst/registers[6][16] ,\RegFiles_inst/registers[6][15] ,\RegFiles_inst/registers[6][14] ,\RegFiles_inst/registers[6][13] ,\RegFiles_inst/registers[6][12] ,\RegFiles_inst/registers[6][11] ,\RegFiles_inst/registers[6][10] ,\RegFiles_inst/registers[6][9] ,\RegFiles_inst/registers[6][8] ,\RegFiles_inst/registers[6][7] ,\RegFiles_inst/registers[6][6] ,\RegFiles_inst/registers[6][5] ,\RegFiles_inst/registers[6][4] ,\RegFiles_inst/registers[6][3] ,\RegFiles_inst/registers[6][2] ,\RegFiles_inst/registers[6][1] ,\RegFiles_inst/registers[6][0] ,\RegFiles_inst/registers[7][31] ,\RegFiles_inst/registers[7][30] ,\RegFiles_inst/registers[7][29] ,\RegFiles_inst/registers[7][28] ,\RegFiles_inst/registers[7][27] ,\RegFiles_inst/registers[7][26] ,\RegFiles_inst/registers[7][25] ,\RegFiles_inst/registers[7][24] ,\RegFiles_inst/registers[7][23] ,\RegFiles_inst/registers[7][22] ,\RegFiles_inst/registers[7][21] ,\RegFiles_inst/registers[7][20] ,\RegFiles_inst/registers[7][19] ,\RegFiles_inst/registers[7][18] ,\RegFiles_inst/registers[7][17] ,\RegFiles_inst/registers[7][16] ,\RegFiles_inst/registers[7][15] ,\RegFiles_inst/registers[7][14] ,\RegFiles_inst/registers[7][13] ,\RegFiles_inst/registers[7][12] ,\RegFiles_inst/registers[7][11] ,\RegFiles_inst/registers[7][10] ,\RegFiles_inst/registers[7][9] ,\RegFiles_inst/registers[7][8] ,\RegFiles_inst/registers[7][7] ,\RegFiles_inst/registers[7][6] ,\RegFiles_inst/registers[7][5] ,\RegFiles_inst/registers[7][4] ,\RegFiles_inst/registers[7][3] ,\RegFiles_inst/registers[7][2] ,\RegFiles_inst/registers[7][1] ,\RegFiles_inst/registers[7][0] ,\RegFiles_inst/registers[8][31] ,\RegFiles_inst/registers[8][30] ,\RegFiles_inst/registers[8][29] ,\RegFiles_inst/registers[8][28] ,\RegFiles_inst/registers[8][27] ,\RegFiles_inst/registers[8][26] ,\RegFiles_inst/registers[8][25] ,\RegFiles_inst/registers[8][24] ,\RegFiles_inst/registers[8][23] ,\RegFiles_inst/registers[8][22] ,\RegFiles_inst/registers[8][21] ,\RegFiles_inst/registers[8][20] ,\RegFiles_inst/registers[8][19] ,\RegFiles_inst/registers[8][18] ,\RegFiles_inst/registers[8][17] ,\RegFiles_inst/registers[8][16] ,\RegFiles_inst/registers[8][15] ,\RegFiles_inst/registers[8][14] ,\RegFiles_inst/registers[8][13] ,\RegFiles_inst/registers[8][12] ,\RegFiles_inst/registers[8][11] ,\RegFiles_inst/registers[8][10] ,\RegFiles_inst/registers[8][9] ,\RegFiles_inst/registers[8][8] ,\RegFiles_inst/registers[8][7] ,\RegFiles_inst/registers[8][6] ,\RegFiles_inst/registers[8][5] ,\RegFiles_inst/registers[8][4] ,\RegFiles_inst/registers[8][3] ,\RegFiles_inst/registers[8][2] ,\RegFiles_inst/registers[8][1] ,\RegFiles_inst/registers[8][0] ,\ALU_inst/Result[31] ,\ALU_inst/Result[30] ,\ALU_inst/Result[29] ,\ALU_inst/Result[28] ,\ALU_inst/Result[27] ,\ALU_inst/Result[26] ,\ALU_inst/Result[25] ,\ALU_inst/Result[24] ,\ALU_inst/Result[23] ,\ALU_inst/Result[22] ,\ALU_inst/Result[21] ,\ALU_inst/Result[20] ,\ALU_inst/Result[19] ,\ALU_inst/Result[18] ,\ALU_inst/Result[17] ,\ALU_inst/Result[16] ,\ALU_inst/Result[15] ,\ALU_inst/Result[14] ,\ALU_inst/Result[13] ,\ALU_inst/Result[12] ,\ALU_inst/Result[11] ,\ALU_inst/Result[10] ,\ALU_inst/Result[9] ,\ALU_inst/Result[8] ,\ALU_inst/Result[7] ,\ALU_inst/Result[6] ,\ALU_inst/Result[5] ,\ALU_inst/Result[4] ,\ALU_inst/Result[3] ,\ALU_inst/Result[2] ,\ALU_inst/Result[1] ,\ALU_inst/Result[0] ,\RegFiles_inst/Write_Address[4] ,\RegFiles_inst/Write_Address[3] ,\RegFiles_inst/Write_Address[2] ,\RegFiles_inst/Write_Address[1] ,\RegFiles_inst/Write_Address[0] ,\WR_BUS[31] ,\WR_BUS[30] ,\WR_BUS[29] ,\WR_BUS[28] ,\WR_BUS[27] ,\WR_BUS[26] ,\WR_BUS[25] ,\WR_BUS[24] ,\WR_BUS[23] ,\WR_BUS[22] ,\WR_BUS[21] ,\WR_BUS[20] ,\WR_BUS[19] ,\WR_BUS[18] ,\WR_BUS[17] ,\WR_BUS[16] ,\WR_BUS[15] ,\WR_BUS[14] ,\WR_BUS[13] ,\WR_BUS[12] ,\WR_BUS[11] ,\WR_BUS[10] ,\WR_BUS[9] ,\WR_BUS[8] ,\WR_BUS[7] ,\WR_BUS[6] ,\WR_BUS[5] ,\WR_BUS[4] ,\WR_BUS[3] ,\WR_BUS[2] ,\WR_BUS[1] ,\WR_BUS[0] ,jump,\PC_Liet2_0/pc_in[31] ,\PC_Liet2_0/pc_in[30] ,\PC_Liet2_0/pc_in[29] ,\PC_Liet2_0/pc_in[28] ,\PC_Liet2_0/pc_in[27] ,\PC_Liet2_0/pc_in[26] ,\PC_Liet2_0/pc_in[25] ,\PC_Liet2_0/pc_in[24] ,\PC_Liet2_0/pc_in[23] ,\PC_Liet2_0/pc_in[22] ,\PC_Liet2_0/pc_in[21] ,\PC_Liet2_0/pc_in[20] ,\PC_Liet2_0/pc_in[19] ,\PC_Liet2_0/pc_in[18] ,\PC_Liet2_0/pc_in[17] ,\PC_Liet2_0/pc_in[16] ,\PC_Liet2_0/pc_in[15] ,\PC_Liet2_0/pc_in[14] ,\PC_Liet2_0/pc_in[13] ,\PC_Liet2_0/pc_in[12] ,\PC_Liet2_0/pc_in[11] ,\PC_Liet2_0/pc_in[10] ,\PC_Liet2_0/pc_in[9] ,\PC_Liet2_0/pc_in[8] ,\PC_Liet2_0/pc_in[7] ,\PC_Liet2_0/pc_in[6] ,\PC_Liet2_0/pc_in[5] ,\PC_Liet2_0/pc_in[4] ,\PC_Liet2_0/pc_in[3] ,\PC_Liet2_0/pc_in[2] ,\PC_Liet2_0/pc_in[1] ,\PC_Liet2_0/pc_in[0] ,\RAM_ADDR[31] ,\RAM_ADDR[30] ,\RAM_ADDR[29] ,\RAM_ADDR[28] ,\RAM_ADDR[27] ,\RAM_ADDR[26] ,\RAM_ADDR[25] ,\RAM_ADDR[24] ,\RAM_ADDR[23] ,\RAM_ADDR[22] ,\RAM_ADDR[21] ,\RAM_ADDR[20] ,\RAM_ADDR[19] ,\RAM_ADDR[18] ,\RAM_ADDR[17] ,\RAM_ADDR[16] ,\RAM_ADDR[15] ,\RAM_ADDR[14] ,\RAM_ADDR[13] ,\RAM_ADDR[12] ,\RAM_ADDR[11] ,\RAM_ADDR[10] ,\RAM_ADDR[9] ,\RAM_ADDR[8] ,\RAM_ADDR[7] ,\RAM_ADDR[6] ,\RAM_ADDR[5] ,\RAM_ADDR[4] ,\RAM_ADDR[3] ,\RAM_ADDR[2] ,\RAM_ADDR[1] ,\RAM_ADDR[0] ,\RAM_IN_DATA[31] ,\RAM_IN_DATA[30] ,\RAM_IN_DATA[29] ,\RAM_IN_DATA[28] ,\RAM_IN_DATA[27] ,\RAM_IN_DATA[26] ,\RAM_IN_DATA[25] ,\RAM_IN_DATA[24] ,\RAM_IN_DATA[23] ,\RAM_IN_DATA[22] ,\RAM_IN_DATA[21] ,\RAM_IN_DATA[20] ,\RAM_IN_DATA[19] ,\RAM_IN_DATA[18] ,\RAM_IN_DATA[17] ,\RAM_IN_DATA[16] ,\RAM_IN_DATA[15] ,\RAM_IN_DATA[14] ,\RAM_IN_DATA[13] ,\RAM_IN_DATA[12] ,\RAM_IN_DATA[11] ,\RAM_IN_DATA[10] ,\RAM_IN_DATA[9] ,\RAM_IN_DATA[8] ,\RAM_IN_DATA[7] ,\RAM_IN_DATA[6] ,\RAM_IN_DATA[5] ,\RAM_IN_DATA[4] ,\RAM_IN_DATA[3] ,\RAM_IN_DATA[2] ,\RAM_IN_DATA[1] ,\RAM_IN_DATA[0] ,\DP_inst/adb[9] ,\DP_inst/adb[8] ,\DP_inst/adb[7] ,\DP_inst/adb[6] ,\DP_inst/adb[5] ,\DP_inst/adb[4] ,\DP_inst/adb[3] ,\DP_inst/adb[2] ,\DP_inst/adb[1] ,\DP_inst/adb[0] ,\RAM_inst/RAM_RE ,\RAM_inst/RAM_WE ,JUMP_MODE,\RAM_inst/data_out[31] ,\RAM_inst/data_out[30] ,\RAM_inst/data_out[29] ,\RAM_inst/data_out[28] ,\RAM_inst/data_out[27] ,\RAM_inst/data_out[26] ,\RAM_inst/data_out[25] ,\RAM_inst/data_out[24] ,\RAM_inst/data_out[23] ,\RAM_inst/data_out[22] ,\RAM_inst/data_out[21] ,\RAM_inst/data_out[20] ,\RAM_inst/data_out[19] ,\RAM_inst/data_out[18] ,\RAM_inst/data_out[17] ,\RAM_inst/data_out[16] ,\RAM_inst/data_out[15] ,\RAM_inst/data_out[14] ,\RAM_inst/data_out[13] ,\RAM_inst/data_out[12] ,\RAM_inst/data_out[11] ,\RAM_inst/data_out[10] ,\RAM_inst/data_out[9] ,\RAM_inst/data_out[8] ,\RAM_inst/data_out[7] ,\RAM_inst/data_out[6] ,\RAM_inst/data_out[5] ,\RAM_inst/data_out[4] ,\RAM_inst/data_out[3] ,\RAM_inst/data_out[2] ,\RAM_inst/data_out[1] ,\RAM_inst/data_out[0] ,\RAM_inst/addr_in[31] ,\RAM_inst/addr_in[30] ,\RAM_inst/addr_in[29] ,\RAM_inst/addr_in[28] ,\RAM_inst/addr_in[27] ,\RAM_inst/addr_in[26] ,\RAM_inst/addr_in[25] ,\RAM_inst/addr_in[24] ,\RAM_inst/addr_in[23] ,\RAM_inst/addr_in[22] ,\RAM_inst/addr_in[21] ,\RAM_inst/addr_in[20] ,\RAM_inst/addr_in[19] ,\RAM_inst/addr_in[18] ,\RAM_inst/addr_in[17] ,\RAM_inst/addr_in[16] ,\RAM_inst/addr_in[15] ,\RAM_inst/addr_in[14] ,\RAM_inst/addr_in[13] ,\RAM_inst/addr_in[12] ,\RAM_inst/addr_in[11] ,\RAM_inst/addr_in[10] ,\RAM_inst/addr_in[9] ,\RAM_inst/addr_in[8] ,\RAM_inst/addr_in[7] ,\RAM_inst/addr_in[6] ,\RAM_inst/addr_in[5] ,\RAM_inst/addr_in[4] ,\RAM_inst/addr_in[3] ,\RAM_inst/addr_in[2] ,\RAM_inst/addr_in[1] ,\RAM_inst/addr_in[0] ,\RAM_OUT_DATA[31] ,\RAM_OUT_DATA[30] ,\RAM_OUT_DATA[29] ,\RAM_OUT_DATA[28] ,\RAM_OUT_DATA[27] ,\RAM_OUT_DATA[26] ,\RAM_OUT_DATA[25] ,\RAM_OUT_DATA[24] ,\RAM_OUT_DATA[23] ,\RAM_OUT_DATA[22] ,\RAM_OUT_DATA[21] ,\RAM_OUT_DATA[20] ,\RAM_OUT_DATA[19] ,\RAM_OUT_DATA[18] ,\RAM_OUT_DATA[17] ,\RAM_OUT_DATA[16] ,\RAM_OUT_DATA[15] ,\RAM_OUT_DATA[14] ,\RAM_OUT_DATA[13] ,\RAM_OUT_DATA[12] ,\RAM_OUT_DATA[11] ,\RAM_OUT_DATA[10] ,\RAM_OUT_DATA[9] ,\RAM_OUT_DATA[8] ,\RAM_OUT_DATA[7] ,\RAM_OUT_DATA[6] ,\RAM_OUT_DATA[5] ,\RAM_OUT_DATA[4] ,\RAM_OUT_DATA[3] ,\RAM_OUT_DATA[2] ,\RAM_OUT_DATA[1] ,\RAM_OUT_DATA[0] ,\WR_BUS_inst/ALU_Result[31] ,\WR_BUS_inst/ALU_Result[30] ,\WR_BUS_inst/ALU_Result[29] ,\WR_BUS_inst/ALU_Result[28] ,\WR_BUS_inst/ALU_Result[27] ,\WR_BUS_inst/ALU_Result[26] ,\WR_BUS_inst/ALU_Result[25] ,\WR_BUS_inst/ALU_Result[24] ,\WR_BUS_inst/ALU_Result[23] ,\WR_BUS_inst/ALU_Result[22] ,\WR_BUS_inst/ALU_Result[21] ,\WR_BUS_inst/ALU_Result[20] ,\WR_BUS_inst/ALU_Result[19] ,\WR_BUS_inst/ALU_Result[18] ,\WR_BUS_inst/ALU_Result[17] ,\WR_BUS_inst/ALU_Result[16] ,\WR_BUS_inst/ALU_Result[15] ,\WR_BUS_inst/ALU_Result[14] ,\WR_BUS_inst/ALU_Result[13] ,\WR_BUS_inst/ALU_Result[12] ,\WR_BUS_inst/ALU_Result[11] ,\WR_BUS_inst/ALU_Result[10] ,\WR_BUS_inst/ALU_Result[9] ,\WR_BUS_inst/ALU_Result[8] ,\WR_BUS_inst/ALU_Result[7] ,\WR_BUS_inst/ALU_Result[6] ,\WR_BUS_inst/ALU_Result[5] ,\WR_BUS_inst/ALU_Result[4] ,\WR_BUS_inst/ALU_Result[3] ,\WR_BUS_inst/ALU_Result[2] ,\WR_BUS_inst/ALU_Result[1] ,\WR_BUS_inst/ALU_Result[0] ,\WR_BUS_inst/RAM_out[31] ,\WR_BUS_inst/RAM_out[30] ,\WR_BUS_inst/RAM_out[29] ,\WR_BUS_inst/RAM_out[28] ,\WR_BUS_inst/RAM_out[27] ,\WR_BUS_inst/RAM_out[26] ,\WR_BUS_inst/RAM_out[25] ,\WR_BUS_inst/RAM_out[24] ,\WR_BUS_inst/RAM_out[23] ,\WR_BUS_inst/RAM_out[22] ,\WR_BUS_inst/RAM_out[21] ,\WR_BUS_inst/RAM_out[20] ,\WR_BUS_inst/RAM_out[19] ,\WR_BUS_inst/RAM_out[18] ,\WR_BUS_inst/RAM_out[17] ,\WR_BUS_inst/RAM_out[16] ,\WR_BUS_inst/RAM_out[15] ,\WR_BUS_inst/RAM_out[14] ,\WR_BUS_inst/RAM_out[13] ,\WR_BUS_inst/RAM_out[12] ,\WR_BUS_inst/RAM_out[11] ,\WR_BUS_inst/RAM_out[10] ,\WR_BUS_inst/RAM_out[9] ,\WR_BUS_inst/RAM_out[8] ,\WR_BUS_inst/RAM_out[7] ,\WR_BUS_inst/RAM_out[6] ,\WR_BUS_inst/RAM_out[5] ,\WR_BUS_inst/RAM_out[4] ,\WR_BUS_inst/RAM_out[3] ,\WR_BUS_inst/RAM_out[2] ,\WR_BUS_inst/RAM_out[1] ,\WR_BUS_inst/RAM_out[0] ,\WR_BUS_inst/mux_1 ,\IO_inst/DIO_OUT_EN ,\IO_inst/uart_inst/u_rx_fifo/empty ,\IO_inst/uart_inst/u_rx_fifo/w_data[7] ,\IO_inst/uart_inst/u_rx_fifo/w_data[6] ,\IO_inst/uart_inst/u_rx_fifo/w_data[5] ,\IO_inst/uart_inst/u_rx_fifo/w_data[4] ,\IO_inst/uart_inst/u_rx_fifo/w_data[3] ,\IO_inst/uart_inst/u_rx_fifo/w_data[2] ,\IO_inst/uart_inst/u_rx_fifo/w_data[1] ,\IO_inst/uart_inst/u_rx_fifo/w_data[0] ,\IO_inst/rx_data_out[7] ,\IO_inst/rx_data_out[6] ,\IO_inst/rx_data_out[5] ,\IO_inst/rx_data_out[4] ,\IO_inst/rx_data_out[3] ,\IO_inst/rx_data_out[2] ,\IO_inst/rx_data_out[1] ,\IO_inst/rx_data_out[0] ,\DIO_OUT[7] ,\DIO_OUT[6] ,\DIO_OUT[5] ,\DIO_OUT[4] ,\DIO_OUT[3] ,\DIO_OUT[2] ,\DIO_OUT[1] ,\DIO_OUT[0] ,\RegFiles_inst/registers[15][31] ,\RegFiles_inst/registers[15][30] ,\RegFiles_inst/registers[15][29] ,\RegFiles_inst/registers[15][28] ,\RegFiles_inst/registers[15][27] ,\RegFiles_inst/registers[15][26] ,\RegFiles_inst/registers[15][25] ,\RegFiles_inst/registers[15][24] ,\RegFiles_inst/registers[15][23] ,\RegFiles_inst/registers[15][22] ,\RegFiles_inst/registers[15][21] ,\RegFiles_inst/registers[15][20] ,\RegFiles_inst/registers[15][19] ,\RegFiles_inst/registers[15][18] ,\RegFiles_inst/registers[15][17] ,\RegFiles_inst/registers[15][16] ,\RegFiles_inst/registers[15][15] ,\RegFiles_inst/registers[15][14] ,\RegFiles_inst/registers[15][13] ,\RegFiles_inst/registers[15][12] ,\RegFiles_inst/registers[15][11] ,\RegFiles_inst/registers[15][10] ,\RegFiles_inst/registers[15][9] ,\RegFiles_inst/registers[15][8] ,\RegFiles_inst/registers[15][7] ,\RegFiles_inst/registers[15][6] ,\RegFiles_inst/registers[15][5] ,\RegFiles_inst/registers[15][4] ,\RegFiles_inst/registers[15][3] ,\RegFiles_inst/registers[15][2] ,\RegFiles_inst/registers[15][1] ,\RegFiles_inst/registers[15][0] }),
    .clk_i(sys_clk)
);

endmodule
