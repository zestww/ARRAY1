`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/06 22:48:12
// Design Name: 
// Module Name: ic_group
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
`include "define.v" 


module ic_group(
input clk,
input rst,
/*DDR中直接取的数据，需均分至16个ic子模块
 */
input [`DDR_W - 1 : 0] din,
input wr_en,
/*上一级ic_group输出rd_en_pre送入本级第一个ic
 *本级最后一个ic输出rd_en_nxt
 */
input rd_en_pre,
output rd_en_nxt,
/*端口0
 */
output [`DATA_W - 1 : 0] col_data_0,
output col_valid_0,
/*端口1
 */
output [`DATA_W - 1 : 0] col_data_1,
output col_valid_1,
/*端口2
 */
output [`DATA_W - 1 : 0] col_data_2,
output col_valid_2,
/*端口3
 */
output [`DATA_W - 1 : 0] col_data_3,
output col_valid_3,
/*端口4
 */
output [`DATA_W - 1 : 0] col_data_4,
output col_valid_4,
/*端口5
 */
output [`DATA_W - 1 : 0] col_data_5,
output col_valid_5,
/*端口6
 */
output [`DATA_W - 1 : 0] col_data_6,
output col_valid_6,
/*端口7
 */
output [`DATA_W - 1 : 0] col_data_7,
output col_valid_7,
/*端口8
 */
output [`DATA_W - 1 : 0] col_data_8,
output col_valid_8,
/*端口9
 */
output [`DATA_W - 1 : 0] col_data_9,
output col_valid_9,
/*端口10
 */
output [`DATA_W - 1 : 0] col_data_10,
output col_valid_10,
/*端口11
 */
output [`DATA_W - 1 : 0] col_data_11,
output col_valid_11,
/*端口12
 */
output [`DATA_W - 1 : 0] col_data_12,
output col_valid_12,
/*端口13
 */
output [`DATA_W - 1 : 0] col_data_13,
output col_valid_13,
/*端口14
 */
output [`DATA_W - 1 : 0] col_data_14,
output col_valid_14,
/*端口15
 */
output [`DATA_W - 1 : 0] col_data_15,
output col_valid_15
    );
    
reg [`DATA_W - 1 : 0] din_c [`IC_N - 1 : 0];  
reg wr_en_c [`IC_N - 1 : 0];  

genvar i;
generate for(i = 0 ; i < 16; i = i + 1)
begin
always@(posedge clk) begin
    wr_en_c[i] <= wr_en;
    din_c[i] <= din[i*`DATA_W + 7 : i*`DATA_W];
end

    ic i0(
    .clk(clk),
    .rst(rst),
    .din(din_c[i]),
    .wr_en(wr_en_c[i]),
    .rd_en_pre(),
    .data_col_in(),
    .valid_col_in(),
    .empty(),
    .rd_en_nxt()
    );
    
    
end
endgenerate
    
//fifo_generator_2 input_fifo0 (
//  .rst(rst),        // input wire rst
//  .wr_clk(wr_clk),  // input wire wr_clk
//  .rd_clk(rd_clk),  // input wire rd_clk
//  .din(din),        // input wire [767 : 0] din
//  .wr_en(wr_en),    // input wire wr_en
//  .rd_en(rd_en),    // input wire rd_en
//  .dout(dout),      // output wire [767 : 0] dout
//  .full(full),      // output wire full
//  .empty(empty)    // output wire empty
//);

//fifo_generator_2 input_fifo1 (
//  .rst(rst),        // input wire rst
//  .wr_clk(wr_clk),  // input wire wr_clk
//  .rd_clk(rd_clk),  // input wire rd_clk
//  .din(din),        // input wire [767 : 0] din
//  .wr_en(wr_en),    // input wire wr_en
//  .rd_en(rd_en),    // input wire rd_en
//  .dout(dout),      // output wire [767 : 0] dout
//  .full(full),      // output wire full
//  .empty(empty)    // output wire empty
//);
    
endmodule
