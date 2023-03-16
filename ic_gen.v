`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/10 22:52:37
// Design Name: 
// Module Name: ic_gen
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
`define Data_width          8
`define DDR_width          128
`define Group_num          6
`define IC          96

module ic_gen(
input clk,
input rst,

/*端口0
 */
output [`Data_width - 1 : 0] col_data_0,
output col_valid_0,
/*端口1
 */
output [`Data_width - 1 : 0] col_data_1,
output col_valid_1,
/*端口2
 */
output [`Data_width - 1 : 0] col_data_2,
output col_valid_2,
/*端口3
 */
output [`Data_width - 1 : 0] col_data_3,
output col_valid_3,
/*端口4
 */
output [`Data_width - 1 : 0] col_data_4,
output col_valid_4,
/*端口5
 */
output [`Data_width - 1 : 0] col_data_5,
output col_valid_5,
/*端口6
 */
output [`Data_width - 1 : 0] col_data_6,
output col_valid_6,
/*端口7
 */
output [`Data_width - 1 : 0] col_data_7,
output col_valid_7,
/*端口8
 */
output [`Data_width - 1 : 0] col_data_8,
output col_valid_8,
/*端口9
 */
output [`Data_width - 1 : 0] col_data_9,
output col_valid_9,
/*端口10
 */
output [`Data_width - 1 : 0] col_data_10,
output col_valid_10,
/*端口11
 */
output [`Data_width - 1 : 0] col_data_11,
output col_valid_11,
/*端口12
 */
output [`Data_width - 1 : 0] col_data_12,
output col_valid_12,
/*端口13
 */
output [`Data_width - 1 : 0] col_data_13,
output col_valid_13,
/*端口14
 */
output [`Data_width - 1 : 0] col_data_14,
output col_valid_14,
/*端口15
 */
output [`Data_width - 1 : 0] col_data_15,
output col_valid_15,
/*端口16
 */
output [`Data_width - 1 : 0] col_data_16,
output col_valid_16,
/*端口17
 */
output [`Data_width - 1 : 0] col_data_17,
output col_valid_17,
/*端口18
 */
output [`Data_width - 1 : 0] col_data_18,
output col_valid_18,
/*端口19
 */
output [`Data_width - 1 : 0] col_data_19,
output col_valid_19,
/*端口20
 */
output [`Data_width - 1 : 0] col_data_20,
output col_valid_20,
/*端口21
 */
output [`Data_width - 1 : 0] col_data_21,
output col_valid_21,
/*端口22
 */
output [`Data_width - 1 : 0] col_data_22,
output col_valid_22,
/*端口23
 */
output [`Data_width - 1 : 0] col_data_23,
output col_valid_23,
/*端口24
 */
output [`Data_width - 1 : 0] col_data_24,
output col_valid_24,
/*端口25
 */
output [`Data_width - 1 : 0] col_data_25,
output col_valid_25,
/*端口26
 */
output [`Data_width - 1 : 0] col_data_26,
output col_valid_26,
/*端口27
 */
output [`Data_width - 1 : 0] col_data_27,
output col_valid_27,
/*端口28
 */
output [`Data_width - 1 : 0] col_data_28,
output col_valid_28,
/*端口29
 */
output [`Data_width - 1 : 0] col_data_29,
output col_valid_29,
/*端口30
 */
output [`Data_width - 1 : 0] col_data_30,
output col_valid_30,
/*端口31
 */
output [`Data_width - 1 : 0] col_data_31,
output col_valid_31,
/*端口32
 */
output [`Data_width - 1 : 0] col_data_32,
output col_valid_32,
/*端口33
 */
output [`Data_width - 1 : 0] col_data_33,
output col_valid_33,
/*端口34
 */
output [`Data_width - 1 : 0] col_data_34,
output col_valid_34,
/*端口35
 */
output [`Data_width - 1 : 0] col_data_35,
output col_valid_35,
/*端口36
 */
output [`Data_width - 1 : 0] col_data_36,
output col_valid_36,
/*端口37
 */
output [`Data_width - 1 : 0] col_data_37,
output col_valid_37,
/*端口38
 */
output [`Data_width - 1 : 0] col_data_38,
output col_valid_38,
/*端口39
 */
output [`Data_width - 1 : 0] col_data_39,
output col_valid_39,
/*端口40
 */
output [`Data_width - 1 : 0] col_data_40,
output col_valid_40,
/*端口41
 */
output [`Data_width - 1 : 0] col_data_41,
output col_valid_41,
/*端口42
 */
output [`Data_width - 1 : 0] col_data_42,
output col_valid_42,
/*端口43
 */
output [`Data_width - 1 : 0] col_data_43,
output col_valid_43,
/*端口44
 */
output [`Data_width - 1 : 0] col_data_44,
output col_valid_44,
/*端口45
 */
output [`Data_width - 1 : 0] col_data_45,
output col_valid_45,
/*端口46
 */
output [`Data_width - 1 : 0] col_data_46,
output col_valid_46,
/*端口47
 */
output [`Data_width - 1 : 0] col_data_47,
output col_valid_47,
/*端口48
 */
output [`Data_width - 1 : 0] col_data_48,
output col_valid_48,
/*端口49
 */
output [`Data_width - 1 : 0] col_data_49,
output col_valid_49,
/*端口50
 */
output [`Data_width - 1 : 0] col_data_50,
output col_valid_50,
/*端口51
 */
output [`Data_width - 1 : 0] col_data_51,
output col_valid_51,
/*端口52
 */
output [`Data_width - 1 : 0] col_data_52,
output col_valid_52,
/*端口53
 */
output [`Data_width - 1 : 0] col_data_53,
output col_valid_53,
/*端口54
 */
output [`Data_width - 1 : 0] col_data_54,
output col_valid_54,
/*端口55
 */
output [`Data_width - 1 : 0] col_data_55,
output col_valid_55,
/*端口56
 */
output [`Data_width - 1 : 0] col_data_56,
output col_valid_56,
/*端口57
 */
output [`Data_width - 1 : 0] col_data_57,
output col_valid_57,
/*端口58
 */
output [`Data_width - 1 : 0] col_data_58,
output col_valid_58,
/*端口59
 */
output [`Data_width - 1 : 0] col_data_59,
output col_valid_59,
/*端口60
 */
output [`Data_width - 1 : 0] col_data_60,
output col_valid_60,
/*端口61
 */
output [`Data_width - 1 : 0] col_data_61,
output col_valid_61,
/*端口62
 */
output [`Data_width - 1 : 0] col_data_62,
output col_valid_62,
/*端口63
 */
output [`Data_width - 1 : 0] col_data_63,
output col_valid_63,
/*端口64
 */
output [`Data_width - 1 : 0] col_data_64,
output col_valid_64,
/*端口65
 */
output [`Data_width - 1 : 0] col_data_65,
output col_valid_65,
/*端口66
 */
output [`Data_width - 1 : 0] col_data_66,
output col_valid_66,
/*端口67
 */
output [`Data_width - 1 : 0] col_data_67,
output col_valid_67,
/*端口68
 */
output [`Data_width - 1 : 0] col_data_68,
output col_valid_68,
/*端口69
 */
output [`Data_width - 1 : 0] col_data_69,
output col_valid_69,
/*端口70
 */
output [`Data_width - 1 : 0] col_data_70,
output col_valid_70,
/*端口71
 */
output [`Data_width - 1 : 0] col_data_71,
output col_valid_71,
/*端口72
 */
output [`Data_width - 1 : 0] col_data_72,
output col_valid_72,
/*端口73
 */
output [`Data_width - 1 : 0] col_data_73,
output col_valid_73,
/*端口74
 */
output [`Data_width - 1 : 0] col_data_74,
output col_valid_74,
/*端口75
 */
output [`Data_width - 1 : 0] col_data_75,
output col_valid_75,
/*端口76
 */
output [`Data_width - 1 : 0] col_data_76,
output col_valid_76,
/*端口77
 */
output [`Data_width - 1 : 0] col_data_77,
output col_valid_77,
/*端口78
 */
output [`Data_width - 1 : 0] col_data_78,
output col_valid_78,
/*端口79
 */
output [`Data_width - 1 : 0] col_data_79,
output col_valid_79,
/*端口80
 */
output [`Data_width - 1 : 0] col_data_80,
output col_valid_80,
/*端口81
 */
output [`Data_width - 1 : 0] col_data_81,
output col_valid_81,
/*端口82
 */
output [`Data_width - 1 : 0] col_data_82,
output col_valid_82,
/*端口83
 */
output [`Data_width - 1 : 0] col_data_83,
output col_valid_83,
/*端口84
 */
output [`Data_width - 1 : 0] col_data_84,
output col_valid_84,
/*端口85
 */
output [`Data_width - 1 : 0] col_data_85,
output col_valid_85,
/*端口86
 */
output [`Data_width - 1 : 0] col_data_86,
output col_valid_86,
/*端口87
 */
output [`Data_width - 1 : 0] col_data_87,
output col_valid_87,
/*端口88
 */
output [`Data_width - 1 : 0] col_data_88,
output col_valid_88,
/*端口89
 */
output [`Data_width - 1 : 0] col_data_89,
output col_valid_89,
/*端口90
 */
output [`Data_width - 1 : 0] col_data_90,
output col_valid_90,
/*端口91
 */
output [`Data_width - 1 : 0] col_data_91,
output col_valid_91,
/*端口92
 */
output [`Data_width - 1 : 0] col_data_92,
output col_valid_92,
/*端口93
 */
output [`Data_width - 1 : 0] col_data_93,
output col_valid_93,
/*端口94
 */
output [`Data_width - 1 : 0] col_data_94,
output col_valid_94,
/*端口95
 */
output [`Data_width - 1 : 0] col_data_95,
output col_valid_95,

input [`Data_width - 1 : 0] din,
input wr_en
    );

reg [`Data_width - 1 : 0] din_c [`Group_num - 1 : 0];
reg [`Group_num - 1 : 0] wr_en_c ;
reg [5:0] wr_mux;
always@(posedge clk or posedge rst) begin
    if(rst) begin
        wr_mux <= 6'b000001;
    end
    else begin
        case(wr_mux)
        6'b000001:begin
            if(wr_en) begin
                wr_en_c <= 6'b000001;
                din_c[0] <= din;
                wr_mux <= 6'b000010;
            end
            else begin
                wr_en_c <= 6'b000000;
                din_c[0] <= 0;
            end
        end
        6'b000010:begin
            if(wr_en) begin
                wr_en_c <= 6'b000010;
                din_c[1] <= din;
                wr_mux <= 6'b000100;
            end
            else begin
                wr_en_c <= 6'b000000;
                din_c[1] <= 0;
            end
        end
        6'b000100:begin
            if(wr_en) begin
                wr_en_c <= 6'b000100;
                din_c[2] <= din;
                wr_mux <= 6'b001000;
            end
            else begin
                wr_en_c <= 6'b000000;
                din_c[2] <= 0;
            end
        end
        6'b001000:begin
            if(wr_en) begin
                wr_en_c <= 6'b001000;
                din_c[3] <= din;
                wr_mux <= 6'b010000;
            end
            else begin
                wr_en_c <= 6'b000000;
                din_c[3] <= 0;
            end
        end
        6'b010000:begin
            if(wr_en) begin
                wr_en_c <= 6'b010000;
                din_c[4] <= din;
                wr_mux <= 6'b100000;
            end
            else begin
                wr_en_c <= 6'b000000;
                din_c[4] <= 0;
            end
        end
        6'b100000:begin
            if(wr_en) begin
                wr_en_c <= 6'b100000;
                din_c[5] <= din;
                wr_mux <= 6'b000001;
            end
            else begin
                wr_en_c <= 6'b000000;
                din_c[5] <= 0;
            end
        end
        endcase
    end
end




/*向阵列输出
 */
wire [`Data_width - 1 : 0] col_data [`IC - 1 : 0];
wire col_valid [`IC - 1 : 0];

assign col_valid_0 = col_valid[0];assign col_valid_1 = col_valid[1];assign col_valid_2 = col_valid[2];assign col_valid_3 = col_valid[3];
assign col_valid_4 = col_valid[4];assign col_valid_5 = col_valid[5];assign col_valid_6 = col_valid[6];assign col_valid_7 = col_valid[7];
assign col_valid_8 = col_valid[8];assign col_valid_9 = col_valid[9];assign col_valid_10 = col_valid[10];assign col_valid_11 = col_valid[11];
assign col_valid_12 = col_valid[12];assign col_valid_13 = col_valid[13];assign col_valid_14 = col_valid[14];assign col_valid_15 = col_valid[15];
assign col_valid_16 = col_valid[16];assign col_valid_17 = col_valid[17];assign col_valid_18 = col_valid[18];assign col_valid_19 = col_valid[19];
assign col_valid_20 = col_valid[20];assign col_valid_21 = col_valid[21];assign col_valid_22 = col_valid[22];assign col_valid_23 = col_valid[23];
assign col_valid_24 = col_valid[24];assign col_valid_25 = col_valid[25];assign col_valid_26 = col_valid[26];assign col_valid_27 = col_valid[27];
assign col_valid_28 = col_valid[28];assign col_valid_29 = col_valid[29];assign col_valid_30 = col_valid[30];assign col_valid_31 = col_valid[31];
assign col_valid_32 = col_valid[32];assign col_valid_33 = col_valid[33];assign col_valid_34 = col_valid[34];assign col_valid_35 = col_valid[35];
assign col_valid_36 = col_valid[36];assign col_valid_37 = col_valid[37];assign col_valid_38 = col_valid[38];assign col_valid_39 = col_valid[39];
assign col_valid_40 = col_valid[40];assign col_valid_41 = col_valid[41];assign col_valid_42 = col_valid[42];assign col_valid_43 = col_valid[43];
assign col_valid_44 = col_valid[44];assign col_valid_45 = col_valid[45];assign col_valid_46 = col_valid[46];assign col_valid_47 = col_valid[47];
assign col_valid_48 = col_valid[48];assign col_valid_49 = col_valid[49];assign col_valid_50 = col_valid[50];assign col_valid_51 = col_valid[51];
assign col_valid_52 = col_valid[52];assign col_valid_53 = col_valid[53];assign col_valid_54 = col_valid[54];assign col_valid_55 = col_valid[55];
assign col_valid_56 = col_valid[56];assign col_valid_57 = col_valid[57];assign col_valid_58 = col_valid[58];assign col_valid_59 = col_valid[59];
assign col_valid_60 = col_valid[60];assign col_valid_61 = col_valid[61];assign col_valid_62 = col_valid[62];assign col_valid_63 = col_valid[63];
assign col_valid_64 = col_valid[64];assign col_valid_65 = col_valid[65];assign col_valid_66 = col_valid[66];assign col_valid_67 = col_valid[67];
assign col_valid_68 = col_valid[68];assign col_valid_69 = col_valid[69];assign col_valid_70 = col_valid[70];assign col_valid_71 = col_valid[71];
assign col_valid_72 = col_valid[72];assign col_valid_73 = col_valid[73];assign col_valid_74 = col_valid[74];assign col_valid_75 = col_valid[75];
assign col_valid_76 = col_valid[76];assign col_valid_77 = col_valid[77];assign col_valid_78 = col_valid[78];assign col_valid_79 = col_valid[79];
assign col_valid_80 = col_valid[80];assign col_valid_81 = col_valid[81];assign col_valid_82 = col_valid[82];assign col_valid_83 = col_valid[83];
assign col_valid_84 = col_valid[84];assign col_valid_85 = col_valid[85];assign col_valid_86 = col_valid[86];assign col_valid_87 = col_valid[87];
assign col_valid_88 = col_valid[88];assign col_valid_89 = col_valid[89];assign col_valid_90 = col_valid[90];assign col_valid_91 = col_valid[91];
assign col_valid_92 = col_valid[92];assign col_valid_93 = col_valid[93];assign col_valid_94 = col_valid[94];assign col_valid_95 = col_valid[95];


assign col_data_0 = col_valid[0];assign col_data_1 = col_valid[1];assign col_data_2 = col_valid[2];assign col_data_3 = col_valid[3];
assign col_data_4 = col_valid[4];assign col_data_5 = col_valid[5];assign col_data_6 = col_valid[6];assign col_data_7 = col_valid[7];
assign col_data_8 = col_valid[8];assign col_data_9 = col_valid[9];assign col_data_10 = col_valid[10];assign col_data_11 = col_valid[11];
assign col_data_12 = col_valid[12];assign col_data_13 = col_valid[13];assign col_data_14 = col_valid[14];assign col_data_15 = col_valid[15];
assign col_data_16 = col_valid[16];assign col_data_17 = col_valid[17];assign col_data_18 = col_valid[18];assign col_data_19 = col_valid[19];
assign col_data_20 = col_valid[20];assign col_data_21 = col_valid[21];assign col_data_22 = col_valid[22];assign col_data_23 = col_valid[23];
assign col_data_24 = col_valid[24];assign col_data_25 = col_valid[25];assign col_data_26 = col_valid[26];assign col_data_27 = col_valid[27];
assign col_data_28 = col_valid[28];assign col_data_29 = col_valid[29];assign col_data_30 = col_valid[30];assign col_data_31 = col_valid[31];
assign col_data_32 = col_valid[32];assign col_data_33 = col_valid[33];assign col_data_34 = col_valid[34];assign col_data_35 = col_valid[35];
assign col_data_36 = col_valid[36];assign col_data_37 = col_valid[37];assign col_data_38 = col_valid[38];assign col_data_39 = col_valid[39];
assign col_data_40 = col_valid[40];assign col_data_41 = col_valid[41];assign col_data_42 = col_valid[42];assign col_data_43 = col_valid[43];
assign col_data_44 = col_valid[44];assign col_data_45 = col_valid[45];assign col_data_46 = col_valid[46];assign col_data_47 = col_valid[47];
assign col_data_48 = col_valid[48];assign col_data_49 = col_valid[49];assign col_data_50 = col_valid[50];assign col_data_51 = col_valid[51];
assign col_data_52 = col_valid[52];assign col_data_53 = col_valid[53];assign col_data_54 = col_valid[54];assign col_data_55 = col_valid[55];
assign col_data_56 = col_valid[56];assign col_data_57 = col_valid[57];assign col_data_58 = col_valid[58];assign col_data_59 = col_valid[59];
assign col_data_60 = col_valid[60];assign col_data_61 = col_valid[61];assign col_data_62 = col_valid[62];assign col_data_63 = col_valid[63];
assign col_data_64 = col_valid[64];assign col_data_65 = col_valid[65];assign col_data_66 = col_valid[66];assign col_data_67 = col_valid[67];
assign col_data_68 = col_valid[68];assign col_data_69 = col_valid[69];assign col_data_70 = col_valid[70];assign col_data_71 = col_valid[71];
assign col_data_72 = col_valid[72];assign col_data_73 = col_valid[73];assign col_data_74 = col_valid[74];assign col_data_75 = col_valid[75];
assign col_data_76 = col_valid[76];assign col_data_77 = col_valid[77];assign col_data_78 = col_valid[78];assign col_data_79 = col_valid[79];
assign col_data_80 = col_valid[80];assign col_data_81 = col_valid[81];assign col_data_82 = col_valid[82];assign col_data_83 = col_valid[83];
assign col_data_84 = col_valid[84];assign col_data_85 = col_valid[85];assign col_data_86 = col_valid[86];assign col_data_87 = col_valid[87];
assign col_data_88 = col_valid[88];assign col_data_89 = col_valid[89];assign col_data_90 = col_valid[90];assign col_data_91 = col_valid[91];
assign col_data_92 = col_valid[92];assign col_data_93 = col_valid[93];assign col_data_94 = col_valid[94];assign col_data_95 = col_valid[95];

wire rd_en_pre [`Group_num - 1 : 0];
wire rd_en_nxt [`Group_num - 1 : 0];

genvar i;
generate for(i = 0;i < 6;i = i + 1)
begin
    ic_group ic0(
    .clk(clk),
    .rst(rst),
    .din(din_c[i]),
    .wr_en(wr_en_c[i]),
    .rd_en_pre(rd_en_pre[i - 1]),
    .rd_en_nxt(rd_en_pre[i]),
    
    /*端口0
     */
    .col_data_0(col_data[16*i + 0]),
    .col_valid_0(col_valid[16*i + 0]),
    /*端口1
     */
    .col_data_1(col_data[16*i + 1]),
    .col_valid_1(col_valid[16*i + 1]),
    /*端口2
     */
    .col_data_2(col_data[16*i + 2]),
    .col_valid_2(col_valid[16*i + 2]),
    /*端口3
     */
    .col_data_3(col_data[16*i + 3]),
    .col_valid_3(col_valid[16*i + 3]),
    /*端口4
     */
    .col_data_4(col_data[16*i + 4]),
    .col_valid_4(col_valid[16*i + 4]),
    /*端口5
     */
    .col_data_5(col_data[16*i + 5]),
    .col_valid_5(col_valid[16*i + 5]),
    /*端口6
     */
    .col_data_6(col_data[16*i + 6]),
    .col_valid_6(col_valid[16*i + 6]),
    /*端口7
     */
    .col_data_7(col_data[16*i + 7]),
    .col_valid_7(col_valid[16*i + 7]),
    /*端口8
     */
    .col_data_8(col_data[16*i + 8]),
    .col_valid_8(col_valid[16*i + 8]),
    /*端口9
     */
    .col_data_9(col_data[16*i + 9]),
    .col_valid_9(col_valid[16*i + 9]),
    /*端口10
     */
    .col_data_10(col_data[16*i + 10]),
    .col_valid_10(col_valid[16*i + 10]),
    /*端口11
     */
    .col_data_11(col_data[16*i + 11]),
    .col_valid_11(col_valid[16*i + 11]),
    /*端口12
     */
    .col_data_12(col_data[16*i + 12]),
    .col_valid_12(col_valid[16*i + 12]),
    /*端口13
     */
    .col_data_13(col_data[16*i + 13]),
    .col_valid_13(col_valid[16*i + 13]),
    /*端口14
     */
    .col_data_14(col_data[16*i + 14]),
    .col_valid_14(col_valid[16*i + 14]),
    /*端口15
     */
    .col_data_15(col_data[16*i + 15]),
    .col_valid_15(col_valid[16*i + 15])
    );
end
endgenerate
    

ping_pang_rec rec();

    
    
endmodule
