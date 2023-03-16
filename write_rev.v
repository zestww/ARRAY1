`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/21 18:23:58
// Design Name: 
// Module Name: write_rev
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


module write_rev(
input clk,
input rst,

input [127 : 0] din,
input wr_en,

/*
 *hbm写数据总线0
 */
output  [127 : 0] AXI_WDATA,
input   AXI_WREADY,
output  reg AXI_WLAST = 0,
output  [15 : 0]  AXI_WSTRB,
//output  [31 : 0]  AXI_WDATA_PARITY,
output  reg AXI_WVALID = 0,

/*
 *hbm写地址总线0
 */
output reg [28 : 0] AXI_AWADDR = 0,
output reg [1 : 0] AXI_AWBURST = 0,
output reg [3 : 0] AXI_AWCACHE = 0,
output reg [3 : 0] AXI_AWID = 0,
output reg [7 : 0] AXI_AWLEN = 0,

output reg [0 : 0] AXI_AWLOCK = 0,
output reg [2 : 0] AXI_AWPROT = 0,
output reg [3 : 0] AXI_AWQOS = 0,

output reg [2 : 0] AXI_AWSIZE = 0,
output reg AXI_AWVALID = 0,
input AXI_AWREADY,

input [3:0] AXI_BID,
output reg AXI_BREADY = 1,
input AXI_BRESP,
input AXI_BVALID,

output reg init_done = 0
    );
/*
 *当frame_cnt == 99且AXI_WREADY & AXI_WVALID = 1表示最后一帧发送
 */
reg [6:0] frame_cnt = 0;    
/*
 *统计一帧中的第几个数据
 */
always@(posedge clk)
begin
    if(AXI_WREADY & AXI_WVALID & (frame_cnt < 99))   /* 如果一帧超过99个数据，就重置 ('h63)  */ 
        frame_cnt <= frame_cnt + 1; 
    else if(AXI_WREADY & AXI_WVALID)
        frame_cnt <= 0; 
end    
    
wire empty;

/*统计发起几次传输*/
reg [2:0] aw_cnt = 0;
/*统计完成几次传输*/
reg [2:0] w_cnt = 0;

/*
 *统计一帧中的第几个数据
 */
always@(posedge clk)
begin
    if(rst) begin
        AXI_AWADDR <= 0;
        AXI_AWVALID <= 0;
        AXI_AWSIZE <= 0;
        AXI_AWBURST <= 0;
        AXI_AWLEN <= 0;
        
        aw_cnt <= 0;
    end
    else if((~AXI_AWVALID) && (aw_cnt < 5)) begin
        AXI_AWVALID <= 1;
        AXI_AWSIZE <= 3'b100;
        AXI_AWBURST <= 2'b01;
        AXI_AWLEN <= 'h63;
    end
    else if(AXI_AWVALID & AXI_AWREADY) begin
        AXI_AWADDR <= AXI_AWADDR + 'h640;
        AXI_AWVALID <= 0;
        AXI_AWSIZE <= 0;
        AXI_AWBURST <= 0;
        AXI_AWLEN <= 0;
        
        aw_cnt <= aw_cnt + 1;
    end
end   

always@(posedge clk) begin
    if((frame_cnt == 99) && AXI_WLAST)
        w_cnt <= w_cnt + 1;
end

always@(posedge clk) begin
    if(w_cnt == 5) begin
        init_done <= 1;
    end
end

/*
 *AXI_WVALID逻辑
 */
always@(posedge clk)
begin
    if((~AXI_WVALID) & (~empty)) begin
        AXI_WVALID <= 1;
    end
    else if(AXI_WREADY & AXI_WVALID & (empty)) begin
        AXI_WVALID <= 0;
    end
end

wire  rd_en;
reg rd_en_tmp = 0;
always@(posedge clk)
begin
    if(wr_en & empty) begin
        rd_en_tmp <= 1;
    end
    else begin
        rd_en_tmp <= 0;
    end
end
assign rd_en = rd_en_tmp || (AXI_WVALID & AXI_WREADY);

/*
 *AXI_WLAST逻辑
 */
always@(posedge clk)
begin
    if(AXI_WREADY & AXI_WVALID & (frame_cnt == 98)) begin
        AXI_WLAST <= 1;
    end
    else if(AXI_WREADY & AXI_WVALID) begin
        AXI_WLAST <= 0;
    end
end

assign AXI_WSTRB = 32'hffffffff;



//assign AXI_WDATA_PARITY = {{^(AXI_WDATA[255:248])},{^(AXI_WDATA[247:240])},{^(AXI_WDATA[239:232])},{^(AXI_WDATA[231:224])},
//                               {^(AXI_WDATA[223:216])}, {^(AXI_WDATA[215:208])},{^(AXI_WDATA[207:200])},{^(AXI_WDATA[199:192])},
//                               {^(AXI_WDATA[191:184])}, {^(AXI_WDATA[183:176])},{^(AXI_WDATA[175:168])},{^(AXI_WDATA[167:160])},
//                               {^(AXI_WDATA[159:152])}, {^(AXI_WDATA[151:144])},{^(AXI_WDATA[143:136])},{^(AXI_WDATA[135:128])},
//                               {^(AXI_WDATA[127:120])}, {^(AXI_WDATA[119:112])},{^(AXI_WDATA[111:104])},{^(AXI_WDATA[103:96])},
//                               {^(AXI_WDATA[95:88])},   {^(AXI_WDATA[87:80])},  {^(AXI_WDATA[79:72])},  {^(AXI_WDATA[71:64])},
//                               {^(AXI_WDATA[63:56])},   {^(AXI_WDATA[55:48])},  {^(AXI_WDATA[47:40])},  {^(AXI_WDATA[39:32])},
//                               {^(AXI_WDATA[31:24])},   {^(AXI_WDATA[23:16])},  {^(AXI_WDATA[15:8])},   {^(AXI_WDATA[7:0])}};
                               
//assign AXI_WDATA_PARITY0 = {{^(AXI_WDATA0[255:248])},{^(AXI_WDATA0[247:240])},{^(AXI_WDATA0[239:232])},{^(AXI_WDATA0[231:224])},
//                               {^(AXI_WDATA0[223:216])}, {^(AXI_WDATA0[215:208])},{^(AXI_WDATA0[207:200])},{^(AXI_WDATA0[199:192])},
//                               {^(AXI_WDATA0[191:184])}, {^(AXI_WDATA0[183:176])},{^(AXI_WDATA0[175:168])},{^(AXI_WDATA0[167:160])},
//                               {^(AXI_WDATA0[159:152])}, {^(AXI_WDATA0[151:144])},{^(AXI_WDATA0[143:136])},{^(AXI_WDATA0[135:128])},
//                               {^(AXI_WDATA0[127:120])}, {^(AXI_WDATA0[119:112])},{^(AXI_WDATA0[111:104])},{^(AXI_WDATA0[103:96])},
//                               {^(AXI_WDATA0[95:88])},   {^(AXI_WDATA0[87:80])},  {^(AXI_WDATA0[79:72])},  {^(AXI_WDATA0[71:64])},
//                               {^(AXI_WDATA0[63:56])},   {^(AXI_WDATA0[55:48])},  {^(AXI_WDATA0[47:40])},  {^(AXI_WDATA0[39:32])},
//                               {^(AXI_WDATA0[31:24])},   {^(AXI_WDATA0[23:16])},  {^(AXI_WDATA0[15:8])},   {^(AXI_WDATA0[7:0])}};
                               
//assign AXI_WDATA_PARITY1 = {{^(AXI_WDATA1[255:248])},{^(AXI_WDATA1[247:240])},{^(AXI_WDATA1[239:232])},{^(AXI_WDATA1[231:224])},
//                               {^(AXI_WDATA1[223:216])}, {^(AXI_WDATA1[215:208])},{^(AXI_WDATA1[207:200])},{^(AXI_WDATA1[199:192])},
//                               {^(AXI_WDATA1[191:184])}, {^(AXI_WDATA1[183:176])},{^(AXI_WDATA1[175:168])},{^(AXI_WDATA1[167:160])},
//                               {^(AXI_WDATA1[159:152])}, {^(AXI_WDATA1[151:144])},{^(AXI_WDATA1[143:136])},{^(AXI_WDATA1[135:128])},
//                               {^(AXI_WDATA1[127:120])}, {^(AXI_WDATA1[119:112])},{^(AXI_WDATA1[111:104])},{^(AXI_WDATA1[103:96])},
//                               {^(AXI_WDATA1[95:88])},   {^(AXI_WDATA1[87:80])},  {^(AXI_WDATA1[79:72])},  {^(AXI_WDATA1[71:64])},
//                               {^(AXI_WDATA1[63:56])},   {^(AXI_WDATA1[55:48])},  {^(AXI_WDATA1[47:40])},  {^(AXI_WDATA1[39:32])},
//                               {^(AXI_WDATA1[31:24])},   {^(AXI_WDATA1[23:16])},  {^(AXI_WDATA1[15:8])},   {^(AXI_WDATA1[7:0])}};
                               
 
                                                             


fifo_generator_1 wfifo (
  .clk(clk),                // input wire clk
  .rst(rst),                // input wire rst
  .din(din),                // input wire [255 : 0] din
  .wr_en(wr_en),            // input wire wr_en
  .rd_en(rd_en),            // input wire rd_en
  .dout(AXI_WDATA),              // output wire [255 : 0] dout
  .full(full),              // output wire full
  .empty(empty)            // output wire empty
); 
    
    
    
    
endmodule
