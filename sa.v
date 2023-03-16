`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/10 22:52:45
// Design Name: 
// Module Name: sa
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`define DDR_width          128
`define Data_width          8
`define div          96

module sa(
input clk,
input rst,

/*端口0
 */
input [`Data_width - 1 : 0] col_data_0,
input col_valid_0,
/*端口1
 */
input [`Data_width - 1 : 0] col_data_1,
input col_valid_1,
/*端口2
 */
input [`Data_width - 1 : 0] col_data_2,
input col_valid_2,
/*端口3
 */
input [`Data_width - 1 : 0] col_data_3,
input col_valid_3,
/*端口4
 */
input [`Data_width - 1 : 0] col_data_4,
input col_valid_4,
/*端口5
 */
input [`Data_width - 1 : 0] col_data_5,
input col_valid_5,
/*端口6
 */
input [`Data_width - 1 : 0] col_data_6,
input col_valid_6,
/*端口7
 */
input [`Data_width - 1 : 0] col_data_7,
input col_valid_7,
/*端口8
 */
input [`Data_width - 1 : 0] col_data_8,
input col_valid_8,
/*端口9
 */
input [`Data_width - 1 : 0] col_data_9,
input col_valid_9,
/*端口10
 */
input [`Data_width - 1 : 0] col_data_10,
input col_valid_10,
/*端口11
 */
input [`Data_width - 1 : 0] col_data_11,
input col_valid_11,
/*端口12
 */
input [`Data_width - 1 : 0] col_data_12,
input col_valid_12,
/*端口13
 */
input [`Data_width - 1 : 0] col_data_13,
input col_valid_13,
/*端口14
 */
input [`Data_width - 1 : 0] col_data_14,
input col_valid_14,
/*端口15
 */
input [`Data_width - 1 : 0] col_data_15,
input col_valid_15,
/*端口16
 */
input [`Data_width - 1 : 0] col_data_16,
input col_valid_16,
/*端口17
 */
input [`Data_width - 1 : 0] col_data_17,
input col_valid_17,
/*端口18
 */
input [`Data_width - 1 : 0] col_data_18,
input col_valid_18,
/*端口19
 */
input [`Data_width - 1 : 0] col_data_19,
input col_valid_19,
/*端口20
 */
input [`Data_width - 1 : 0] col_data_20,
input col_valid_20,
/*端口21
 */
input [`Data_width - 1 : 0] col_data_21,
input col_valid_21,
/*端口22
 */
input [`Data_width - 1 : 0] col_data_22,
input col_valid_22,
/*端口23
 */
input [`Data_width - 1 : 0] col_data_23,
input col_valid_23,
/*端口24
 */
input [`Data_width - 1 : 0] col_data_24,
input col_valid_24,
/*端口25
 */
input [`Data_width - 1 : 0] col_data_25,
input col_valid_25,
/*端口26
 */
input [`Data_width - 1 : 0] col_data_26,
input col_valid_26,
/*端口27
 */
input [`Data_width - 1 : 0] col_data_27,
input col_valid_27,
/*端口28
 */
input [`Data_width - 1 : 0] col_data_28,
input col_valid_28,
/*端口29
 */
input [`Data_width - 1 : 0] col_data_29,
input col_valid_29,
/*端口30
 */
input [`Data_width - 1 : 0] col_data_30,
input col_valid_30,
/*端口31
 */
input [`Data_width - 1 : 0] col_data_31,
input col_valid_31,
/*端口32
 */
input [`Data_width - 1 : 0] col_data_32,
input col_valid_32,
/*端口33
 */
input [`Data_width - 1 : 0] col_data_33,
input col_valid_33,
/*端口34
 */
input [`Data_width - 1 : 0] col_data_34,
input col_valid_34,
/*端口35
 */
input [`Data_width - 1 : 0] col_data_35,
input col_valid_35,
/*端口36
 */
input [`Data_width - 1 : 0] col_data_36,
input col_valid_36,
/*端口37
 */
input [`Data_width - 1 : 0] col_data_37,
input col_valid_37,
/*端口38
 */
input [`Data_width - 1 : 0] col_data_38,
input col_valid_38,
/*端口39
 */
input [`Data_width - 1 : 0] col_data_39,
input col_valid_39,
/*端口40
 */
input [`Data_width - 1 : 0] col_data_40,
input col_valid_40,
/*端口41
 */
input [`Data_width - 1 : 0] col_data_41,
input col_valid_41,
/*端口42
 */
input [`Data_width - 1 : 0] col_data_42,
input col_valid_42,
/*端口43
 */
input [`Data_width - 1 : 0] col_data_43,
input col_valid_43,
/*端口44
 */
input [`Data_width - 1 : 0] col_data_44,
input col_valid_44,
/*端口45
 */
input [`Data_width - 1 : 0] col_data_45,
input col_valid_45,
/*端口46
 */
input [`Data_width - 1 : 0] col_data_46,
input col_valid_46,
/*端口47
 */
input [`Data_width - 1 : 0] col_data_47,
input col_valid_47,
/*端口48
 */
input [`Data_width - 1 : 0] col_data_48,
input col_valid_48,
/*端口49
 */
input [`Data_width - 1 : 0] col_data_49,
input col_valid_49,
/*端口50
 */
input [`Data_width - 1 : 0] col_data_50,
input col_valid_50,
/*端口51
 */
input [`Data_width - 1 : 0] col_data_51,
input col_valid_51,
/*端口52
 */
input [`Data_width - 1 : 0] col_data_52,
input col_valid_52,
/*端口53
 */
input [`Data_width - 1 : 0] col_data_53,
input col_valid_53,
/*端口54
 */
input [`Data_width - 1 : 0] col_data_54,
input col_valid_54,
/*端口55
 */
input [`Data_width - 1 : 0] col_data_55,
input col_valid_55,
/*端口56
 */
input [`Data_width - 1 : 0] col_data_56,
input col_valid_56,
/*端口57
 */
input [`Data_width - 1 : 0] col_data_57,
input col_valid_57,
/*端口58
 */
input [`Data_width - 1 : 0] col_data_58,
input col_valid_58,
/*端口59
 */
input [`Data_width - 1 : 0] col_data_59,
input col_valid_59,
/*端口60
 */
input [`Data_width - 1 : 0] col_data_60,
input col_valid_60,
/*端口61
 */
input [`Data_width - 1 : 0] col_data_61,
input col_valid_61,
/*端口62
 */
input [`Data_width - 1 : 0] col_data_62,
input col_valid_62,
/*端口63
 */
input [`Data_width - 1 : 0] col_data_63,
input col_valid_63,
/*端口64
 */
input [`Data_width - 1 : 0] col_data_64,
input col_valid_64,
/*端口65
 */
input [`Data_width - 1 : 0] col_data_65,
input col_valid_65,
/*端口66
 */
input [`Data_width - 1 : 0] col_data_66,
input col_valid_66,
/*端口67
 */
input [`Data_width - 1 : 0] col_data_67,
input col_valid_67,
/*端口68
 */
input [`Data_width - 1 : 0] col_data_68,
input col_valid_68,
/*端口69
 */
input [`Data_width - 1 : 0] col_data_69,
input col_valid_69,
/*端口70
 */
input [`Data_width - 1 : 0] col_data_70,
input col_valid_70,
/*端口71
 */
input [`Data_width - 1 : 0] col_data_71,
input col_valid_71,
/*端口72
 */
input [`Data_width - 1 : 0] col_data_72,
input col_valid_72,
/*端口73
 */
input [`Data_width - 1 : 0] col_data_73,
input col_valid_73,
/*端口74
 */
input [`Data_width - 1 : 0] col_data_74,
input col_valid_74,
/*端口75
 */
input [`Data_width - 1 : 0] col_data_75,
input col_valid_75,
/*端口76
 */
input [`Data_width - 1 : 0] col_data_76,
input col_valid_76,
/*端口77
 */
input [`Data_width - 1 : 0] col_data_77,
input col_valid_77,
/*端口78
 */
input [`Data_width - 1 : 0] col_data_78,
input col_valid_78,
/*端口79
 */
input [`Data_width - 1 : 0] col_data_79,
input col_valid_79,
/*端口80
 */
input [`Data_width - 1 : 0] col_data_80,
input col_valid_80,
/*端口81
 */
input [`Data_width - 1 : 0] col_data_81,
input col_valid_81,
/*端口82
 */
input [`Data_width - 1 : 0] col_data_82,
input col_valid_82,
/*端口83
 */
input [`Data_width - 1 : 0] col_data_83,
input col_valid_83,
/*端口84
 */
input [`Data_width - 1 : 0] col_data_84,
input col_valid_84,
/*端口85
 */
input [`Data_width - 1 : 0] col_data_85,
input col_valid_85,
/*端口86
 */
input [`Data_width - 1 : 0] col_data_86,
input col_valid_86,
/*端口87
 */
input [`Data_width - 1 : 0] col_data_87,
input col_valid_87,
/*端口88
 */
input [`Data_width - 1 : 0] col_data_88,
input col_valid_88,
/*端口89
 */
input [`Data_width - 1 : 0] col_data_89,
input col_valid_89,
/*端口90
 */
input [`Data_width - 1 : 0] col_data_90,
input col_valid_90,
/*端口91
 */
input [`Data_width - 1 : 0] col_data_91,
input col_valid_91,
/*端口92
 */
input [`Data_width - 1 : 0] col_data_92,
input col_valid_92,
/*端口93
 */
input [`Data_width - 1 : 0] col_data_93,
input col_valid_93,
/*端口94
 */
input [`Data_width - 1 : 0] col_data_94,
input col_valid_94,
/*端口95
 */
input [`Data_width - 1 : 0] col_data_95,
input col_valid_95,

/*row_in
 */
input [`Data_width - 1 : 0] row_data,
input row_valid
    );
/*pe节点左上角的输入
 */
wire  [`Data_width - 1 : 0]  data_in1 [`div - 1 : 0][`div - 1 : 0];
wire  [`Data_width - 1 : 0]  data_in2 [`div - 1 : 0][`div - 1 : 0];
wire  [`Data_width - 1 : 0]  data_in3 [`div - 1 : 0][`div - 1 : 0];
/*第一行pe无in1，in2
 */
assign data_in1[0][0] = 0;assign data_in1[0][1] = 0;assign data_in1[0][2] = 0;assign data_in1[0][3] = 0;
assign data_in1[0][4] = 0;assign data_in1[0][5] = 0;assign data_in1[0][6] = 0;assign data_in1[0][7] = 0;
assign data_in1[0][8] = 0;assign data_in1[0][9] = 0;assign data_in1[0][10] = 0;assign data_in1[0][11] = 0;
assign data_in1[0][12] = 0;assign data_in1[0][13] = 0;assign data_in1[0][14] = 0;assign data_in1[0][15] = 0;
assign data_in1[0][16] = 0;assign data_in1[0][17] = 0;assign data_in1[0][18] = 0;assign data_in1[0][19] = 0;
assign data_in1[0][20] = 0;assign data_in1[0][21] = 0;assign data_in1[0][22] = 0;assign data_in1[0][23] = 0;
assign data_in1[0][24] = 0;assign data_in1[0][25] = 0;assign data_in1[0][26] = 0;assign data_in1[0][27] = 0;
assign data_in1[0][28] = 0;assign data_in1[0][29] = 0;assign data_in1[0][30] = 0;assign data_in1[0][31] = 0;
assign data_in1[0][32] = 0;assign data_in1[0][33] = 0;assign data_in1[0][34] = 0;assign data_in1[0][35] = 0;
assign data_in1[0][36] = 0;assign data_in1[0][37] = 0;assign data_in1[0][38] = 0;assign data_in1[0][39] = 0;
assign data_in1[0][40] = 0;assign data_in1[0][41] = 0;assign data_in1[0][42] = 0;assign data_in1[0][43] = 0;
assign data_in1[0][44] = 0;assign data_in1[0][45] = 0;assign data_in1[0][46] = 0;assign data_in1[0][47] = 0;
assign data_in1[0][48] = 0;assign data_in1[0][49] = 0;assign data_in1[0][50] = 0;assign data_in1[0][51] = 0;
assign data_in1[0][52] = 0;assign data_in1[0][53] = 0;assign data_in1[0][54] = 0;assign data_in1[0][55] = 0;
assign data_in1[0][56] = 0;assign data_in1[0][57] = 0;assign data_in1[0][58] = 0;assign data_in1[0][59] = 0;
assign data_in1[0][60] = 0;assign data_in1[0][61] = 0;assign data_in1[0][62] = 0;assign data_in1[0][63] = 0;
assign data_in1[0][64] = 0;assign data_in1[0][65] = 0;assign data_in1[0][66] = 0;assign data_in1[0][67] = 0;
assign data_in1[0][68] = 0;assign data_in1[0][69] = 0;assign data_in1[0][70] = 0;assign data_in1[0][71] = 0;
assign data_in1[0][72] = 0;assign data_in1[0][73] = 0;assign data_in1[0][74] = 0;assign data_in1[0][75] = 0;
assign data_in1[0][76] = 0;assign data_in1[0][77] = 0;assign data_in1[0][78] = 0;assign data_in1[0][79] = 0;
assign data_in1[0][80] = 0;assign data_in1[0][81] = 0;assign data_in1[0][82] = 0;assign data_in1[0][83] = 0;
assign data_in1[0][84] = 0;assign data_in1[0][85] = 0;assign data_in1[0][86] = 0;assign data_in1[0][87] = 0;
assign data_in1[0][88] = 0;assign data_in1[0][89] = 0;assign data_in1[0][90] = 0;assign data_in1[0][91] = 0;
assign data_in1[0][92] = 0;assign data_in1[0][93] = 0;assign data_in1[0][94] = 0;assign data_in1[0][95] = 0;

assign data_in2[0][0] = 0;assign data_in2[0][1] = 0;assign data_in2[0][2] = 0;assign data_in2[0][3] = 0;
assign data_in2[0][4] = 0;assign data_in2[0][5] = 0;assign data_in2[0][6] = 0;assign data_in2[0][7] = 0;
assign data_in2[0][8] = 0;assign data_in2[0][9] = 0;assign data_in2[0][10] = 0;assign data_in2[0][11] = 0;
assign data_in2[0][12] = 0;assign data_in2[0][13] = 0;assign data_in2[0][14] = 0;assign data_in2[0][15] = 0;
assign data_in2[0][16] = 0;assign data_in2[0][17] = 0;assign data_in2[0][18] = 0;assign data_in2[0][19] = 0;
assign data_in2[0][20] = 0;assign data_in2[0][21] = 0;assign data_in2[0][22] = 0;assign data_in2[0][23] = 0;
assign data_in2[0][24] = 0;assign data_in2[0][25] = 0;assign data_in2[0][26] = 0;assign data_in2[0][27] = 0;
assign data_in2[0][28] = 0;assign data_in2[0][29] = 0;assign data_in2[0][30] = 0;assign data_in2[0][31] = 0;
assign data_in2[0][32] = 0;assign data_in2[0][33] = 0;assign data_in2[0][34] = 0;assign data_in2[0][35] = 0;
assign data_in2[0][36] = 0;assign data_in2[0][37] = 0;assign data_in2[0][38] = 0;assign data_in2[0][39] = 0;
assign data_in2[0][40] = 0;assign data_in2[0][41] = 0;assign data_in2[0][42] = 0;assign data_in2[0][43] = 0;
assign data_in2[0][44] = 0;assign data_in2[0][45] = 0;assign data_in2[0][46] = 0;assign data_in2[0][47] = 0;
assign data_in2[0][48] = 0;assign data_in2[0][49] = 0;assign data_in2[0][50] = 0;assign data_in2[0][51] = 0;
assign data_in2[0][52] = 0;assign data_in2[0][53] = 0;assign data_in2[0][54] = 0;assign data_in2[0][55] = 0;
assign data_in2[0][56] = 0;assign data_in2[0][57] = 0;assign data_in2[0][58] = 0;assign data_in2[0][59] = 0;
assign data_in2[0][60] = 0;assign data_in2[0][61] = 0;assign data_in2[0][62] = 0;assign data_in2[0][63] = 0;
assign data_in2[0][64] = 0;assign data_in2[0][65] = 0;assign data_in2[0][66] = 0;assign data_in2[0][67] = 0;
assign data_in2[0][68] = 0;assign data_in2[0][69] = 0;assign data_in2[0][70] = 0;assign data_in2[0][71] = 0;
assign data_in2[0][72] = 0;assign data_in2[0][73] = 0;assign data_in2[0][74] = 0;assign data_in2[0][75] = 0;
assign data_in2[0][76] = 0;assign data_in2[0][77] = 0;assign data_in2[0][78] = 0;assign data_in2[0][79] = 0;
assign data_in2[0][80] = 0;assign data_in2[0][81] = 0;assign data_in2[0][82] = 0;assign data_in2[0][83] = 0;
assign data_in2[0][84] = 0;assign data_in2[0][85] = 0;assign data_in2[0][86] = 0;assign data_in2[0][87] = 0;
assign data_in2[0][88] = 0;assign data_in2[0][89] = 0;assign data_in2[0][90] = 0;assign data_in2[0][91] = 0;
assign data_in2[0][92] = 0;assign data_in2[0][93] = 0;assign data_in2[0][94] = 0;assign data_in2[0][95] = 0;


/*第一列pe无in2,in3
 */
assign data_in2[0][0] = 0;assign data_in2[1][0] = 0;assign data_in2[2][0] = 0;assign data_in2[3][0] = 0;
assign data_in2[4][0] = 0;assign data_in2[5][0] = 0;assign data_in2[6][0] = 0;assign data_in2[7][0] = 0;
assign data_in2[8][0] = 0;assign data_in2[9][0] = 0;assign data_in2[10][0] = 0;assign data_in2[11][0] = 0;
assign data_in2[12][0] = 0;assign data_in2[13][0] = 0;assign data_in2[14][0] = 0;assign data_in2[15][0] = 0;
assign data_in2[16][0] = 0;assign data_in2[17][0] = 0;assign data_in2[18][0] = 0;assign data_in2[19][0] = 0;
assign data_in2[20][0] = 0;assign data_in2[21][0] = 0;assign data_in2[22][0] = 0;assign data_in2[23][0] = 0;
assign data_in2[24][0] = 0;assign data_in2[25][0] = 0;assign data_in2[26][0] = 0;assign data_in2[27][0] = 0;
assign data_in2[28][0] = 0;assign data_in2[29][0] = 0;assign data_in2[30][0] = 0;assign data_in2[31][0] = 0;
assign data_in2[32][0] = 0;assign data_in2[33][0] = 0;assign data_in2[34][0] = 0;assign data_in2[35][0] = 0;
assign data_in2[36][0] = 0;assign data_in2[37][0] = 0;assign data_in2[38][0] = 0;assign data_in2[39][0] = 0;
assign data_in2[40][0] = 0;assign data_in2[41][0] = 0;assign data_in2[42][0] = 0;assign data_in2[43][0] = 0;
assign data_in2[44][0] = 0;assign data_in2[45][0] = 0;assign data_in2[46][0] = 0;assign data_in2[47][0] = 0;
assign data_in2[48][0] = 0;assign data_in2[49][0] = 0;assign data_in2[50][0] = 0;assign data_in2[51][0] = 0;
assign data_in2[52][0] = 0;assign data_in2[53][0] = 0;assign data_in2[54][0] = 0;assign data_in2[55][0] = 0;
assign data_in2[56][0] = 0;assign data_in2[57][0] = 0;assign data_in2[58][0] = 0;assign data_in2[59][0] = 0;
assign data_in2[60][0] = 0;assign data_in2[61][0] = 0;assign data_in2[62][0] = 0;assign data_in2[63][0] = 0;
assign data_in2[64][0] = 0;assign data_in2[65][0] = 0;assign data_in2[66][0] = 0;assign data_in2[67][0] = 0;
assign data_in2[68][0] = 0;assign data_in2[69][0] = 0;assign data_in2[70][0] = 0;assign data_in2[71][0] = 0;
assign data_in2[72][0] = 0;assign data_in2[73][0] = 0;assign data_in2[74][0] = 0;assign data_in2[75][0] = 0;
assign data_in2[76][0] = 0;assign data_in2[77][0] = 0;assign data_in2[78][0] = 0;assign data_in2[79][0] = 0;
assign data_in2[80][0] = 0;assign data_in2[81][0] = 0;assign data_in2[82][0] = 0;assign data_in2[83][0] = 0;
assign data_in2[84][0] = 0;assign data_in2[85][0] = 0;assign data_in2[86][0] = 0;assign data_in2[87][0] = 0;
assign data_in2[88][0] = 0;assign data_in2[89][0] = 0;assign data_in2[90][0] = 0;assign data_in2[91][0] = 0;
assign data_in2[92][0] = 0;assign data_in2[93][0] = 0;assign data_in2[94][0] = 0;assign data_in2[95][0] = 0;

assign data_in3[0][0] = 0;assign data_in3[1][0] = 0;assign data_in3[2][0] = 0;assign data_in3[3][0] = 0;
assign data_in3[4][0] = 0;assign data_in3[5][0] = 0;assign data_in3[6][0] = 0;assign data_in3[7][0] = 0;
assign data_in3[8][0] = 0;assign data_in3[9][0] = 0;assign data_in3[10][0] = 0;assign data_in3[11][0] = 0;
assign data_in3[12][0] = 0;assign data_in3[13][0] = 0;assign data_in3[14][0] = 0;assign data_in3[15][0] = 0;
assign data_in3[16][0] = 0;assign data_in3[17][0] = 0;assign data_in3[18][0] = 0;assign data_in3[19][0] = 0;
assign data_in3[20][0] = 0;assign data_in3[21][0] = 0;assign data_in3[22][0] = 0;assign data_in3[23][0] = 0;
assign data_in3[24][0] = 0;assign data_in3[25][0] = 0;assign data_in3[26][0] = 0;assign data_in3[27][0] = 0;
assign data_in3[28][0] = 0;assign data_in3[29][0] = 0;assign data_in3[30][0] = 0;assign data_in3[31][0] = 0;
assign data_in3[32][0] = 0;assign data_in3[33][0] = 0;assign data_in3[34][0] = 0;assign data_in3[35][0] = 0;
assign data_in3[36][0] = 0;assign data_in3[37][0] = 0;assign data_in3[38][0] = 0;assign data_in3[39][0] = 0;
assign data_in3[40][0] = 0;assign data_in3[41][0] = 0;assign data_in3[42][0] = 0;assign data_in3[43][0] = 0;
assign data_in3[44][0] = 0;assign data_in3[45][0] = 0;assign data_in3[46][0] = 0;assign data_in3[47][0] = 0;
assign data_in3[48][0] = 0;assign data_in3[49][0] = 0;assign data_in3[50][0] = 0;assign data_in3[51][0] = 0;
assign data_in3[52][0] = 0;assign data_in3[53][0] = 0;assign data_in3[54][0] = 0;assign data_in3[55][0] = 0;
assign data_in3[56][0] = 0;assign data_in3[57][0] = 0;assign data_in3[58][0] = 0;assign data_in3[59][0] = 0;
assign data_in3[60][0] = 0;assign data_in3[61][0] = 0;assign data_in3[62][0] = 0;assign data_in3[63][0] = 0;
assign data_in3[64][0] = 0;assign data_in3[65][0] = 0;assign data_in3[66][0] = 0;assign data_in3[67][0] = 0;
assign data_in3[68][0] = 0;assign data_in3[69][0] = 0;assign data_in3[70][0] = 0;assign data_in3[71][0] = 0;
assign data_in3[72][0] = 0;assign data_in3[73][0] = 0;assign data_in3[74][0] = 0;assign data_in3[75][0] = 0;
assign data_in3[76][0] = 0;assign data_in3[77][0] = 0;assign data_in3[78][0] = 0;assign data_in3[79][0] = 0;
assign data_in3[80][0] = 0;assign data_in3[81][0] = 0;assign data_in3[82][0] = 0;assign data_in3[83][0] = 0;
assign data_in3[84][0] = 0;assign data_in3[85][0] = 0;assign data_in3[86][0] = 0;assign data_in3[87][0] = 0;
assign data_in3[88][0] = 0;assign data_in3[89][0] = 0;assign data_in3[90][0] = 0;assign data_in3[91][0] = 0;
assign data_in3[92][0] = 0;assign data_in3[93][0] = 0;assign data_in3[94][0] = 0;assign data_in3[95][0] = 0;


wire  valid_in1 [`div - 1 : 0][`div - 1 : 0];
wire  valid_in2 [`div - 1 : 0][`div - 1 : 0];
wire  valid_in3 [`div - 1 : 0][`div - 1 : 0];

/*第一行pe无valid_in1，valid_in2
 */
assign valid_in1[0][0] = 0;assign valid_in1[0][1] = 0;assign valid_in1[0][2] = 0;assign valid_in1[0][3] = 0;
assign valid_in1[0][4] = 0;assign valid_in1[0][5] = 0;assign valid_in1[0][6] = 0;assign valid_in1[0][7] = 0;
assign valid_in1[0][8] = 0;assign valid_in1[0][9] = 0;assign valid_in1[0][10] = 0;assign valid_in1[0][11] = 0;
assign valid_in1[0][12] = 0;assign valid_in1[0][13] = 0;assign valid_in1[0][14] = 0;assign valid_in1[0][15] = 0;
assign valid_in1[0][16] = 0;assign valid_in1[0][17] = 0;assign valid_in1[0][18] = 0;assign valid_in1[0][19] = 0;
assign valid_in1[0][20] = 0;assign valid_in1[0][21] = 0;assign valid_in1[0][22] = 0;assign valid_in1[0][23] = 0;
assign valid_in1[0][24] = 0;assign valid_in1[0][25] = 0;assign valid_in1[0][26] = 0;assign valid_in1[0][27] = 0;
assign valid_in1[0][28] = 0;assign valid_in1[0][29] = 0;assign valid_in1[0][30] = 0;assign valid_in1[0][31] = 0;
assign valid_in1[0][32] = 0;assign valid_in1[0][33] = 0;assign valid_in1[0][34] = 0;assign valid_in1[0][35] = 0;
assign valid_in1[0][36] = 0;assign valid_in1[0][37] = 0;assign valid_in1[0][38] = 0;assign valid_in1[0][39] = 0;
assign valid_in1[0][40] = 0;assign valid_in1[0][41] = 0;assign valid_in1[0][42] = 0;assign valid_in1[0][43] = 0;
assign valid_in1[0][44] = 0;assign valid_in1[0][45] = 0;assign valid_in1[0][46] = 0;assign valid_in1[0][47] = 0;
assign valid_in1[0][48] = 0;assign valid_in1[0][49] = 0;assign valid_in1[0][50] = 0;assign valid_in1[0][51] = 0;
assign valid_in1[0][52] = 0;assign valid_in1[0][53] = 0;assign valid_in1[0][54] = 0;assign valid_in1[0][55] = 0;
assign valid_in1[0][56] = 0;assign valid_in1[0][57] = 0;assign valid_in1[0][58] = 0;assign valid_in1[0][59] = 0;
assign valid_in1[0][60] = 0;assign valid_in1[0][61] = 0;assign valid_in1[0][62] = 0;assign valid_in1[0][63] = 0;
assign valid_in1[0][64] = 0;assign valid_in1[0][65] = 0;assign valid_in1[0][66] = 0;assign valid_in1[0][67] = 0;
assign valid_in1[0][68] = 0;assign valid_in1[0][69] = 0;assign valid_in1[0][70] = 0;assign valid_in1[0][71] = 0;
assign valid_in1[0][72] = 0;assign valid_in1[0][73] = 0;assign valid_in1[0][74] = 0;assign valid_in1[0][75] = 0;
assign valid_in1[0][76] = 0;assign valid_in1[0][77] = 0;assign valid_in1[0][78] = 0;assign valid_in1[0][79] = 0;
assign valid_in1[0][80] = 0;assign valid_in1[0][81] = 0;assign valid_in1[0][82] = 0;assign valid_in1[0][83] = 0;
assign valid_in1[0][84] = 0;assign valid_in1[0][85] = 0;assign valid_in1[0][86] = 0;assign valid_in1[0][87] = 0;
assign valid_in1[0][88] = 0;assign valid_in1[0][89] = 0;assign valid_in1[0][90] = 0;assign valid_in1[0][91] = 0;
assign valid_in1[0][92] = 0;assign valid_in1[0][93] = 0;assign valid_in1[0][94] = 0;assign valid_in1[0][95] = 0;

assign valid_in2[0][0] = 0;assign valid_in2[0][1] = 0;assign valid_in2[0][2] = 0;assign valid_in2[0][3] = 0;
assign valid_in2[0][4] = 0;assign valid_in2[0][5] = 0;assign valid_in2[0][6] = 0;assign valid_in2[0][7] = 0;
assign valid_in2[0][8] = 0;assign valid_in2[0][9] = 0;assign valid_in2[0][10] = 0;assign valid_in2[0][11] = 0;
assign valid_in2[0][12] = 0;assign valid_in2[0][13] = 0;assign valid_in2[0][14] = 0;assign valid_in2[0][15] = 0;
assign valid_in2[0][16] = 0;assign valid_in2[0][17] = 0;assign valid_in2[0][18] = 0;assign valid_in2[0][19] = 0;
assign valid_in2[0][20] = 0;assign valid_in2[0][21] = 0;assign valid_in2[0][22] = 0;assign valid_in2[0][23] = 0;
assign valid_in2[0][24] = 0;assign valid_in2[0][25] = 0;assign valid_in2[0][26] = 0;assign valid_in2[0][27] = 0;
assign valid_in2[0][28] = 0;assign valid_in2[0][29] = 0;assign valid_in2[0][30] = 0;assign valid_in2[0][31] = 0;
assign valid_in2[0][32] = 0;assign valid_in2[0][33] = 0;assign valid_in2[0][34] = 0;assign valid_in2[0][35] = 0;
assign valid_in2[0][36] = 0;assign valid_in2[0][37] = 0;assign valid_in2[0][38] = 0;assign valid_in2[0][39] = 0;
assign valid_in2[0][40] = 0;assign valid_in2[0][41] = 0;assign valid_in2[0][42] = 0;assign valid_in2[0][43] = 0;
assign valid_in2[0][44] = 0;assign valid_in2[0][45] = 0;assign valid_in2[0][46] = 0;assign valid_in2[0][47] = 0;
assign valid_in2[0][48] = 0;assign valid_in2[0][49] = 0;assign valid_in2[0][50] = 0;assign valid_in2[0][51] = 0;
assign valid_in2[0][52] = 0;assign valid_in2[0][53] = 0;assign valid_in2[0][54] = 0;assign valid_in2[0][55] = 0;
assign valid_in2[0][56] = 0;assign valid_in2[0][57] = 0;assign valid_in2[0][58] = 0;assign valid_in2[0][59] = 0;
assign valid_in2[0][60] = 0;assign valid_in2[0][61] = 0;assign valid_in2[0][62] = 0;assign valid_in2[0][63] = 0;
assign valid_in2[0][64] = 0;assign valid_in2[0][65] = 0;assign valid_in2[0][66] = 0;assign valid_in2[0][67] = 0;
assign valid_in2[0][68] = 0;assign valid_in2[0][69] = 0;assign valid_in2[0][70] = 0;assign valid_in2[0][71] = 0;
assign valid_in2[0][72] = 0;assign valid_in2[0][73] = 0;assign valid_in2[0][74] = 0;assign valid_in2[0][75] = 0;
assign valid_in2[0][76] = 0;assign valid_in2[0][77] = 0;assign valid_in2[0][78] = 0;assign valid_in2[0][79] = 0;
assign valid_in2[0][80] = 0;assign valid_in2[0][81] = 0;assign valid_in2[0][82] = 0;assign valid_in2[0][83] = 0;
assign valid_in2[0][84] = 0;assign valid_in2[0][85] = 0;assign valid_in2[0][86] = 0;assign valid_in2[0][87] = 0;
assign valid_in2[0][88] = 0;assign valid_in2[0][89] = 0;assign valid_in2[0][90] = 0;assign valid_in2[0][91] = 0;
assign valid_in2[0][92] = 0;assign valid_in2[0][93] = 0;assign valid_in2[0][94] = 0;assign valid_in2[0][95] = 0;


/*第一列pe无valid_in2,in3
 */
assign valid_in2[0][0] = 0;assign valid_in2[1][0] = 0;assign valid_in2[2][0] = 0;assign valid_in2[3][0] = 0;
assign valid_in2[4][0] = 0;assign valid_in2[5][0] = 0;assign valid_in2[6][0] = 0;assign valid_in2[7][0] = 0;
assign valid_in2[8][0] = 0;assign valid_in2[9][0] = 0;assign valid_in2[10][0] = 0;assign valid_in2[11][0] = 0;
assign valid_in2[12][0] = 0;assign valid_in2[13][0] = 0;assign valid_in2[14][0] = 0;assign valid_in2[15][0] = 0;
assign valid_in2[16][0] = 0;assign valid_in2[17][0] = 0;assign valid_in2[18][0] = 0;assign valid_in2[19][0] = 0;
assign valid_in2[20][0] = 0;assign valid_in2[21][0] = 0;assign valid_in2[22][0] = 0;assign valid_in2[23][0] = 0;
assign valid_in2[24][0] = 0;assign valid_in2[25][0] = 0;assign valid_in2[26][0] = 0;assign valid_in2[27][0] = 0;
assign valid_in2[28][0] = 0;assign valid_in2[29][0] = 0;assign valid_in2[30][0] = 0;assign valid_in2[31][0] = 0;
assign valid_in2[32][0] = 0;assign valid_in2[33][0] = 0;assign valid_in2[34][0] = 0;assign valid_in2[35][0] = 0;
assign valid_in2[36][0] = 0;assign valid_in2[37][0] = 0;assign valid_in2[38][0] = 0;assign valid_in2[39][0] = 0;
assign valid_in2[40][0] = 0;assign valid_in2[41][0] = 0;assign valid_in2[42][0] = 0;assign valid_in2[43][0] = 0;
assign valid_in2[44][0] = 0;assign valid_in2[45][0] = 0;assign valid_in2[46][0] = 0;assign valid_in2[47][0] = 0;
assign valid_in2[48][0] = 0;assign valid_in2[49][0] = 0;assign valid_in2[50][0] = 0;assign valid_in2[51][0] = 0;
assign valid_in2[52][0] = 0;assign valid_in2[53][0] = 0;assign valid_in2[54][0] = 0;assign valid_in2[55][0] = 0;
assign valid_in2[56][0] = 0;assign valid_in2[57][0] = 0;assign valid_in2[58][0] = 0;assign valid_in2[59][0] = 0;
assign valid_in2[60][0] = 0;assign valid_in2[61][0] = 0;assign valid_in2[62][0] = 0;assign valid_in2[63][0] = 0;
assign valid_in2[64][0] = 0;assign valid_in2[65][0] = 0;assign valid_in2[66][0] = 0;assign valid_in2[67][0] = 0;
assign valid_in2[68][0] = 0;assign valid_in2[69][0] = 0;assign valid_in2[70][0] = 0;assign valid_in2[71][0] = 0;
assign valid_in2[72][0] = 0;assign valid_in2[73][0] = 0;assign valid_in2[74][0] = 0;assign valid_in2[75][0] = 0;
assign valid_in2[76][0] = 0;assign valid_in2[77][0] = 0;assign valid_in2[78][0] = 0;assign valid_in2[79][0] = 0;
assign valid_in2[80][0] = 0;assign valid_in2[81][0] = 0;assign valid_in2[82][0] = 0;assign valid_in2[83][0] = 0;
assign valid_in2[84][0] = 0;assign valid_in2[85][0] = 0;assign valid_in2[86][0] = 0;assign valid_in2[87][0] = 0;
assign valid_in2[88][0] = 0;assign valid_in2[89][0] = 0;assign valid_in2[90][0] = 0;assign valid_in2[91][0] = 0;
assign valid_in2[92][0] = 0;assign valid_in2[93][0] = 0;assign valid_in2[94][0] = 0;assign valid_in2[95][0] = 0;

assign valid_in3[0][0] = 0;assign valid_in3[1][0] = 0;assign valid_in3[2][0] = 0;assign valid_in3[3][0] = 0;
assign valid_in3[4][0] = 0;assign valid_in3[5][0] = 0;assign valid_in3[6][0] = 0;assign valid_in3[7][0] = 0;
assign valid_in3[8][0] = 0;assign valid_in3[9][0] = 0;assign valid_in3[10][0] = 0;assign valid_in3[11][0] = 0;
assign valid_in3[12][0] = 0;assign valid_in3[13][0] = 0;assign valid_in3[14][0] = 0;assign valid_in3[15][0] = 0;
assign valid_in3[16][0] = 0;assign valid_in3[17][0] = 0;assign valid_in3[18][0] = 0;assign valid_in3[19][0] = 0;
assign valid_in3[20][0] = 0;assign valid_in3[21][0] = 0;assign valid_in3[22][0] = 0;assign valid_in3[23][0] = 0;
assign valid_in3[24][0] = 0;assign valid_in3[25][0] = 0;assign valid_in3[26][0] = 0;assign valid_in3[27][0] = 0;
assign valid_in3[28][0] = 0;assign valid_in3[29][0] = 0;assign valid_in3[30][0] = 0;assign valid_in3[31][0] = 0;
assign valid_in3[32][0] = 0;assign valid_in3[33][0] = 0;assign valid_in3[34][0] = 0;assign valid_in3[35][0] = 0;
assign valid_in3[36][0] = 0;assign valid_in3[37][0] = 0;assign valid_in3[38][0] = 0;assign valid_in3[39][0] = 0;
assign valid_in3[40][0] = 0;assign valid_in3[41][0] = 0;assign valid_in3[42][0] = 0;assign valid_in3[43][0] = 0;
assign valid_in3[44][0] = 0;assign valid_in3[45][0] = 0;assign valid_in3[46][0] = 0;assign valid_in3[47][0] = 0;
assign valid_in3[48][0] = 0;assign valid_in3[49][0] = 0;assign valid_in3[50][0] = 0;assign valid_in3[51][0] = 0;
assign valid_in3[52][0] = 0;assign valid_in3[53][0] = 0;assign valid_in3[54][0] = 0;assign valid_in3[55][0] = 0;
assign valid_in3[56][0] = 0;assign valid_in3[57][0] = 0;assign valid_in3[58][0] = 0;assign valid_in3[59][0] = 0;
assign valid_in3[60][0] = 0;assign valid_in3[61][0] = 0;assign valid_in3[62][0] = 0;assign valid_in3[63][0] = 0;
assign valid_in3[64][0] = 0;assign valid_in3[65][0] = 0;assign valid_in3[66][0] = 0;assign valid_in3[67][0] = 0;
assign valid_in3[68][0] = 0;assign valid_in3[69][0] = 0;assign valid_in3[70][0] = 0;assign valid_in3[71][0] = 0;
assign valid_in3[72][0] = 0;assign valid_in3[73][0] = 0;assign valid_in3[74][0] = 0;assign valid_in3[75][0] = 0;
assign valid_in3[76][0] = 0;assign valid_in3[77][0] = 0;assign valid_in3[78][0] = 0;assign valid_in3[79][0] = 0;
assign valid_in3[80][0] = 0;assign valid_in3[81][0] = 0;assign valid_in3[82][0] = 0;assign valid_in3[83][0] = 0;
assign valid_in3[84][0] = 0;assign valid_in3[85][0] = 0;assign valid_in3[86][0] = 0;assign valid_in3[87][0] = 0;
assign valid_in3[88][0] = 0;assign valid_in3[89][0] = 0;assign valid_in3[90][0] = 0;assign valid_in3[91][0] = 0;
assign valid_in3[92][0] = 0;assign valid_in3[93][0] = 0;assign valid_in3[94][0] = 0;assign valid_in3[95][0] = 0;



wire  [`Data_width - 1 : 0]  data_out1 [`div - 1 : 0][`div - 1 : 0];
wire  [`Data_width - 1 : 0]  data_out2 [`div - 1 : 0][`div - 1 : 0];
wire  [`Data_width - 1 : 0]  data_out3 [`div - 1 : 0][`div - 1 : 0];

wire  valid_out1 [`div - 1 : 0][`div - 1 : 0];
wire  valid_out2 [`div - 1 : 0][`div - 1 : 0];
wire  valid_out3 [`div - 1 : 0][`div - 1 : 0];

/*行列方向上数据输入
 */
wire  [`Data_width - 1 : 0]  col_data_in [`div - 1 : 0][`div - 1 : 0];
wire  [`Data_width - 1 : 0]  row_data_in [`div - 1 : 0][`div - 1 : 0];

wire  col_valid_in [`div - 1 : 0][`div - 1 : 0];
wire  row_valid_in [`div - 1 : 0][`div - 1 : 0];

wire  [`Data_width - 1 : 0]  col_data_out [`div - 1 : 0][`div - 1 : 0];
wire  [`Data_width - 1 : 0]  row_data_out [`div - 1 : 0][`div - 1 : 0];

wire  col_valid_out [`div - 1 : 0][`div - 1 : 0];
wire  row_valid_out [`div - 1 : 0][`div - 1 : 0];

/*第一行pe接收列方向输入
 */
assign col_data_in[0][0] = col_data_0;assign col_data_in[0][1] = col_data_1;assign col_data_in[0][2] = col_data_2;assign col_data_in[0][3] = col_data_3;
assign col_data_in[0][4] = col_data_4;assign col_data_in[0][5] = col_data_5;assign col_data_in[0][6] = col_data_6;assign col_data_in[0][7] = col_data_7;
assign col_data_in[0][8] = col_data_8;assign col_data_in[0][9] = col_data_9;assign col_data_in[0][10] = col_data_10;assign col_data_in[0][11] = col_data_11;
assign col_data_in[0][12] = col_data_12;assign col_data_in[0][13] = col_data_13;assign col_data_in[0][14] = col_data_14;assign col_data_in[0][15] = col_data_15;
assign col_data_in[0][16] = col_data_16;assign col_data_in[0][17] = col_data_17;assign col_data_in[0][18] = col_data_18;assign col_data_in[0][19] = col_data_19;
assign col_data_in[0][20] = col_data_20;assign col_data_in[0][21] = col_data_21;assign col_data_in[0][22] = col_data_22;assign col_data_in[0][23] = col_data_23;
assign col_data_in[0][24] = col_data_24;assign col_data_in[0][25] = col_data_25;assign col_data_in[0][26] = col_data_26;assign col_data_in[0][27] = col_data_27;
assign col_data_in[0][28] = col_data_28;assign col_data_in[0][29] = col_data_29;assign col_data_in[0][30] = col_data_30;assign col_data_in[0][31] = col_data_31;
assign col_data_in[0][32] = col_data_32;assign col_data_in[0][33] = col_data_33;assign col_data_in[0][34] = col_data_34;assign col_data_in[0][35] = col_data_35;
assign col_data_in[0][36] = col_data_36;assign col_data_in[0][37] = col_data_37;assign col_data_in[0][38] = col_data_38;assign col_data_in[0][39] = col_data_39;
assign col_data_in[0][40] = col_data_40;assign col_data_in[0][41] = col_data_41;assign col_data_in[0][42] = col_data_42;assign col_data_in[0][43] = col_data_43;
assign col_data_in[0][44] = col_data_44;assign col_data_in[0][45] = col_data_45;assign col_data_in[0][46] = col_data_46;assign col_data_in[0][47] = col_data_47;
assign col_data_in[0][48] = col_data_48;assign col_data_in[0][49] = col_data_49;assign col_data_in[0][50] = col_data_50;assign col_data_in[0][51] = col_data_51;
assign col_data_in[0][52] = col_data_52;assign col_data_in[0][53] = col_data_53;assign col_data_in[0][54] = col_data_54;assign col_data_in[0][55] = col_data_55;
assign col_data_in[0][56] = col_data_56;assign col_data_in[0][57] = col_data_57;assign col_data_in[0][58] = col_data_58;assign col_data_in[0][59] = col_data_59;
assign col_data_in[0][60] = col_data_60;assign col_data_in[0][61] = col_data_61;assign col_data_in[0][62] = col_data_62;assign col_data_in[0][63] = col_data_63;
assign col_data_in[0][64] = col_data_64;assign col_data_in[0][65] = col_data_65;assign col_data_in[0][66] = col_data_66;assign col_data_in[0][67] = col_data_67;
assign col_data_in[0][68] = col_data_68;assign col_data_in[0][69] = col_data_69;assign col_data_in[0][70] = col_data_70;assign col_data_in[0][71] = col_data_71;
assign col_data_in[0][72] = col_data_72;assign col_data_in[0][73] = col_data_73;assign col_data_in[0][74] = col_data_74;assign col_data_in[0][75] = col_data_75;
assign col_data_in[0][76] = col_data_76;assign col_data_in[0][77] = col_data_77;assign col_data_in[0][78] = col_data_78;assign col_data_in[0][79] = col_data_79;
assign col_data_in[0][80] = col_data_80;assign col_data_in[0][81] = col_data_81;assign col_data_in[0][82] = col_data_82;assign col_data_in[0][83] = col_data_83;
assign col_data_in[0][84] = col_data_84;assign col_data_in[0][85] = col_data_85;assign col_data_in[0][86] = col_data_86;assign col_data_in[0][87] = col_data_87;
assign col_data_in[0][88] = col_data_88;assign col_data_in[0][89] = col_data_89;assign col_data_in[0][90] = col_data_90;assign col_data_in[0][91] = col_data_91;
assign col_data_in[0][92] = col_data_92;assign col_data_in[0][93] = col_data_93;assign col_data_in[0][94] = col_data_94;assign col_data_in[0][95] = col_data_95;

assign col_valid_in[0][0] = col_valid_0;assign col_valid_in[0][1] = col_valid_1;assign col_valid_in[0][2] = col_valid_2;assign col_valid_in[0][3] = col_valid_3;
assign col_valid_in[0][4] = col_valid_4;assign col_valid_in[0][5] = col_valid_5;assign col_valid_in[0][6] = col_valid_6;assign col_valid_in[0][7] = col_valid_7;
assign col_valid_in[0][8] = col_valid_8;assign col_valid_in[0][9] = col_valid_9;assign col_valid_in[0][10] = col_valid_10;assign col_valid_in[0][11] = col_valid_11;
assign col_valid_in[0][12] = col_valid_12;assign col_valid_in[0][13] = col_valid_13;assign col_valid_in[0][14] = col_valid_14;assign col_valid_in[0][15] = col_valid_15;
assign col_valid_in[0][16] = col_valid_16;assign col_valid_in[0][17] = col_valid_17;assign col_valid_in[0][18] = col_valid_18;assign col_valid_in[0][19] = col_valid_19;
assign col_valid_in[0][20] = col_valid_20;assign col_valid_in[0][21] = col_valid_21;assign col_valid_in[0][22] = col_valid_22;assign col_valid_in[0][23] = col_valid_23;
assign col_valid_in[0][24] = col_valid_24;assign col_valid_in[0][25] = col_valid_25;assign col_valid_in[0][26] = col_valid_26;assign col_valid_in[0][27] = col_valid_27;
assign col_valid_in[0][28] = col_valid_28;assign col_valid_in[0][29] = col_valid_29;assign col_valid_in[0][30] = col_valid_30;assign col_valid_in[0][31] = col_valid_31;
assign col_valid_in[0][32] = col_valid_32;assign col_valid_in[0][33] = col_valid_33;assign col_valid_in[0][34] = col_valid_34;assign col_valid_in[0][35] = col_valid_35;
assign col_valid_in[0][36] = col_valid_36;assign col_valid_in[0][37] = col_valid_37;assign col_valid_in[0][38] = col_valid_38;assign col_valid_in[0][39] = col_valid_39;
assign col_valid_in[0][40] = col_valid_40;assign col_valid_in[0][41] = col_valid_41;assign col_valid_in[0][42] = col_valid_42;assign col_valid_in[0][43] = col_valid_43;
assign col_valid_in[0][44] = col_valid_44;assign col_valid_in[0][45] = col_valid_45;assign col_valid_in[0][46] = col_valid_46;assign col_valid_in[0][47] = col_valid_47;
assign col_valid_in[0][48] = col_valid_48;assign col_valid_in[0][49] = col_valid_49;assign col_valid_in[0][50] = col_valid_50;assign col_valid_in[0][51] = col_valid_51;
assign col_valid_in[0][52] = col_valid_52;assign col_valid_in[0][53] = col_valid_53;assign col_valid_in[0][54] = col_valid_54;assign col_valid_in[0][55] = col_valid_55;
assign col_valid_in[0][56] = col_valid_56;assign col_valid_in[0][57] = col_valid_57;assign col_valid_in[0][58] = col_valid_58;assign col_valid_in[0][59] = col_valid_59;
assign col_valid_in[0][60] = col_valid_60;assign col_valid_in[0][61] = col_valid_61;assign col_valid_in[0][62] = col_valid_62;assign col_valid_in[0][63] = col_valid_63;
assign col_valid_in[0][64] = col_valid_64;assign col_valid_in[0][65] = col_valid_65;assign col_valid_in[0][66] = col_valid_66;assign col_valid_in[0][67] = col_valid_67;
assign col_valid_in[0][68] = col_valid_68;assign col_valid_in[0][69] = col_valid_69;assign col_valid_in[0][70] = col_valid_70;assign col_valid_in[0][71] = col_valid_71;
assign col_valid_in[0][72] = col_valid_72;assign col_valid_in[0][73] = col_valid_73;assign col_valid_in[0][74] = col_valid_74;assign col_valid_in[0][75] = col_valid_75;
assign col_valid_in[0][76] = col_valid_76;assign col_valid_in[0][77] = col_valid_77;assign col_valid_in[0][78] = col_valid_78;assign col_valid_in[0][79] = col_valid_79;
assign col_valid_in[0][80] = col_valid_80;assign col_valid_in[0][81] = col_valid_81;assign col_valid_in[0][82] = col_valid_82;assign col_valid_in[0][83] = col_valid_83;
assign col_valid_in[0][84] = col_valid_84;assign col_valid_in[0][85] = col_valid_85;assign col_valid_in[0][86] = col_valid_86;assign col_valid_in[0][87] = col_valid_87;
assign col_valid_in[0][88] = col_valid_88;assign col_valid_in[0][89] = col_valid_89;assign col_valid_in[0][90] = col_valid_90;assign col_valid_in[0][91] = col_valid_91;
assign col_valid_in[0][92] = col_valid_92;assign col_valid_in[0][93] = col_valid_93;assign col_valid_in[0][94] = col_valid_94;assign col_valid_in[0][95] = col_valid_95;

/*row数据从左边输入*/
//assign data_row_out[1][0] = data_row_in1;
//assign data_row_out[2][0] = data_row_in2;
//assign data_row_out[3][0] = data_row_in3;

//assign valid_row_out[1][0] = valid_row_in1;
//assign valid_row_out[2][0] = valid_row_in2;
//assign valid_row_out[3][0] = valid_row_in3;

///*col数据从上边输入*/
//assign data_col_out[0][1] = data_col_in1;
//assign data_col_out[0][2] = data_col_in2;
//assign data_col_out[0][3] = data_col_in3;

//assign valid_col_out[0][1] = valid_col_in1;
//assign valid_col_out[0][2] = valid_col_in2;
//assign valid_col_out[0][3] = valid_col_in3;




genvar i;
genvar j;
generate for(i = 0;i < 96;i = i + 1) begin
for(j = 0;j < 96;j = j + 1) begin
    pe#(
    .port_id_x(i),
    .port_id_y(j)
    )pe_gen(
    .clk(clk),
    .rst(rst),
    /*单个pe的三路输入*/
    .data_in1(data_in1[i][j]),
    .valid_in1(valid_in1[i][j]),
    .data_in2(data_in2[i][j]),
    .valid_in2(valid_in2[i][j]),
    .data_in3(data_in3[i][j]),
    .valid_in3(valid_in3[i][j]),
    
    .data_out1(data_out1[i][j]),
    .valid_out1(valid_out1[i][j]),
    .data_out2(data_out2[i][j]),
    .valid_out2(valid_out2[i][j]),
    .data_out3(data_out3[i][j]),
    .valid_out3(valid_out3[i][j]),
    
    .col_data_in(col_data_in[i][j]),
    .col_valid_in(col_valid_in[i][j]),
    .row_data_in(row_data_in[i][j]),
    .row_valid_in(row_valid_in[i][j]),
    
    .col_data_out(col_data_out[i][j]),
    .col_valid_out(col_valid_out[i][j]),
    .row_data_out(row_data_out[i][j]),
    .row_valid_out(row_valid_out[i][j])
    );
end
end
endgenerate

/*除第一行与第一列
 */
genvar k;
genvar m;
generate for(k = 1;k < 96;k = k + 1) begin
for(m = 1;m < 96;m = m + 1) begin
    assign data_in1[k][m] = data_out1[k - 1][m];
    assign valid_in1[k][m] = valid_out1[k - 1][m];
    
    assign data_in2[k][m] = data_out2[k - 1][m - 1];
    assign valid_in2[k][m] = valid_out2[k - 1][m - 1];
    
    assign data_in3[k][m] = data_out3[k][m - 1];
    assign valid_in3[k][m] = valid_out3[k][m - 1];    
end
end
endgenerate

genvar n;
generate for(n = 1;n < 96;n = n + 1) begin
/*第一行的i3来自其左边节点
 */
assign data_in3[0][n] = data_out3[0][n - 1];
assign valid_in3[0][n] = valid_out3[0][n - 1];    
/*第一列的i1来自其上边节点
 */
assign data_in1[n][0] = data_out1[n - 1][0];
assign valid_in1[n][0] = valid_out1[n - 1][0];
end
endgenerate

endmodule
