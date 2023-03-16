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
/*DDR��ֱ��ȡ�����ݣ��������16��ic��ģ��
 */
input [`DDR_W - 1 : 0] din,
input wr_en,
/*��һ��ic_group���rd_en_pre���뱾����һ��ic
 *�������һ��ic���rd_en_nxt
 */
input rd_en_pre,
output rd_en_nxt,
/*�˿�0
 */
output [`DATA_W - 1 : 0] col_data_0,
output col_valid_0,
/*�˿�1
 */
output [`DATA_W - 1 : 0] col_data_1,
output col_valid_1,
/*�˿�2
 */
output [`DATA_W - 1 : 0] col_data_2,
output col_valid_2,
/*�˿�3
 */
output [`DATA_W - 1 : 0] col_data_3,
output col_valid_3,
/*�˿�4
 */
output [`DATA_W - 1 : 0] col_data_4,
output col_valid_4,
/*�˿�5
 */
output [`DATA_W - 1 : 0] col_data_5,
output col_valid_5,
/*�˿�6
 */
output [`DATA_W - 1 : 0] col_data_6,
output col_valid_6,
/*�˿�7
 */
output [`DATA_W - 1 : 0] col_data_7,
output col_valid_7,
/*�˿�8
 */
output [`DATA_W - 1 : 0] col_data_8,
output col_valid_8,
/*�˿�9
 */
output [`DATA_W - 1 : 0] col_data_9,
output col_valid_9,
/*�˿�10
 */
output [`DATA_W - 1 : 0] col_data_10,
output col_valid_10,
/*�˿�11
 */
output [`DATA_W - 1 : 0] col_data_11,
output col_valid_11,
/*�˿�12
 */
output [`DATA_W - 1 : 0] col_data_12,
output col_valid_12,
/*�˿�13
 */
output [`DATA_W - 1 : 0] col_data_13,
output col_valid_13,
/*�˿�14
 */
output [`DATA_W - 1 : 0] col_data_14,
output col_valid_14,
/*�˿�15
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
