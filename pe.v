`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/21 21:28:08
// Design Name: 
// Module Name: pe
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

module pe#(
parameter port_id_x = 2,
parameter port_id_y = 2
)(
input clk,
input rst,
/*单个pe的三路输入*/
input  [`Data_width - 1 : 0]    data_in1,
input  valid_in1,
input  [`Data_width - 1 : 0]    data_in2,
input  valid_in2,
input  [`Data_width - 1 : 0]    data_in3,
input  valid_in3,

output  reg  [`Data_width - 1 : 0]    data_out1,
output  reg  valid_out1,
output  reg  [`Data_width - 1 : 0]    data_out2,
output  reg  valid_out2,
output  reg  [`Data_width - 1 : 0]    data_out3,
output  reg  valid_out3,

input  [`Data_width - 1 : 0]    col_data_in,
input  col_valid_in,
input  [`Data_width - 1 : 0]    row_data_in,
input  row_valid_in,

output  reg  [`Data_width - 1 : 0]    col_data_out,
output  reg  col_valid_out,

output  reg  [`Data_width - 1 : 0]    row_data_out,
output  reg  row_valid_out
    );
/*输入首先寄存
 */  
reg  [`Data_width - 1 : 0]    data_in1_c = 0;
reg  valid_in1_c = 0;
reg  [`Data_width - 1 : 0]    data_in2_c = 0;
reg  valid_in2_c = 0;
reg  [`Data_width - 1 : 0]    data_in3_c = 0;
reg  valid_in3_c = 0;

reg [`Data_width - 1 : 0] col = 0;
reg col_valid = 0;

always@(posedge clk) begin
    data_in1_c <= data_in1; valid_in1_c <= valid_in1;
    data_in2_c <= data_in2; valid_in2_c <= valid_in2;
    data_in3_c <= data_in3; valid_in3_c <= valid_in3;
    col <= col_data_in; col_valid <= col_valid_in;
end
    
            
    
    
    
    

/*row锁存，计算过程中值保持不变*/
reg [`Data_width - 1 : 0] row = 0;
always@(posedge clk) begin  
    if(row_valid_in)
        row <= row_data_in;
end

/*行输出*/
always@(posedge clk) begin
    row_data_out <= row_data_in;
    row_valid_out <= row_valid_in;
end
/*列输出*/
reg  [`Data_width - 1 : 0]    col_data_out_c = 0;
reg  col_valid_out_c = 0;
always@(posedge clk) begin
    col_data_out_c <= col; col_valid_out_c <= col_valid;
    col_data_out <= col_data_out_c; col_valid_out <= col_valid_out_c;
end

/*R = C：N1 = 1;N2 = 0*/
/*R != C：N1 = 0;N2 = 1*/
wire N1;
wire N2;
assign N1 = (col == row)? 1 : 0;
assign N2 = (col == row)? 0 : 1;

reg [`Data_width - 1 : 0] max = 0;
reg sum_valid = 0;
reg  [`Data_width - 1 : 0]    sum1 = 0;
reg  [`Data_width - 1 : 0]    sum2 = 0;
reg  [`Data_width - 1 : 0]    sum3 = 0;

always@(posedge clk) begin
    sum1 <= data_in1_c + N2;
    sum2 <= data_in2_c + N1;
    sum3 <= data_in3_c + N2; 
    sum_valid <= col_valid;
end

generate 
if((port_id_x == 1) && (port_id_y == 1)) begin
    always@(*) begin
        max = 0;
    end
end
else if((port_id_x == 1) && (port_id_y != 1)) begin
    always@(*) begin
        max = sum3;
    end
end
else if((port_id_x != 1) && (port_id_y == 1)) begin
    always@(*) begin
        max = sum1;
    end
end
else begin
    always@(*) begin
        if(((sum1) >= (sum3)) &&((sum1) >= (sum2))) begin
            max = sum1;
        end
        else if(((sum2) >= (sum3)) &&((sum2) >= (sum1))) begin
            max = sum2;
        end
        else begin
            max = sum3;
        end
    end
end
endgenerate

reg  [`Data_width - 1 : 0]    data_out2_c = 0;
reg  valid_out2_c = 0;

/*若有列输入*/
always@(posedge clk) begin
    data_out1 <= max;
    data_out2_c <= max;
    data_out3 <= max;
    valid_out1 <= sum_valid;
    valid_out2_c <= sum_valid;
    valid_out3 <= sum_valid;
end

/*斜向数据比行列数据延迟一个周期
 */
always@(posedge clk) begin
    data_out2 <= data_out2_c;
    valid_out2 <= valid_out2_c;
end

endmodule
