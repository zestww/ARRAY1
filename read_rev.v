`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/17 19:34:57
// Design Name: 
// Module Name: read_rev
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


module read_rev(  
input clk,                      /*功能大概是连续五次传输地址 */
/*写完成的标志
*/
input init_done,
/*
 *hbm读地址总线
 */
output reg [28 : 0] AXI_ARADDR = 0,
output reg [1 : 0] AXI_ARBURST = 0,

output reg [3 : 0] AXI_ARCACHE = 0,


output reg [3 : 0] AXI_ARID = 0,
output reg [7 : 0] AXI_ARLEN = 0,

output reg AXI_ARLOCK = 0,
output reg AXI_ARPROT = 0,
output reg AXI_ARQOS = 0,
input AXI_ARREADY,

output reg [2 : 0] AXI_ARSIZE = 0,
output reg AXI_ARVALID = 0,

/*
 *hbm读数据总线
 */
//input [31 : 0] AXI_RDATA_PARITY0,
input [127 : 0] AXI_RDATA,
input [3 : 0] AXI_RID,
input AXI_RLAST,
input [1 : 0] AXI_RRESP,
input AXI_RVALID,
output reg AXI_RREADY = 1
    );
    
/*统计发起几次传输*/
reg [2:0] ar_cnt = 0;
    
always@(posedge clk)
begin
    if(~init_done) begin
        AXI_ARADDR <= 0;
        AXI_ARBURST <= 2'b0;
        AXI_ARLEN <= 0;
        AXI_ARSIZE <= 0;
        AXI_ARVALID <= 0;
    end
    else if((~AXI_ARVALID) && (ar_cnt <5)) begin
        AXI_ARVALID <= 1;
        AXI_ARSIZE <= 3'b100;
        AXI_ARLEN <= 'h63;
        AXI_ARBURST <= 2'b01;
    end
    else if(AXI_ARVALID & AXI_ARREADY) begin
        AXI_ARADDR <= AXI_ARADDR + 'h640;
        AXI_ARBURST <= 2'b0;
        AXI_ARLEN <= 0;
        AXI_ARSIZE <= 0;
        AXI_ARVALID <= 0;
        
        ar_cnt <= ar_cnt + 1;
    end
end  

//fifo_generator_4 axi_0(
//  .clk(clk),                // input wire clk
//  .rst(sys_rst),                // input wire rst
//  .din(din_tmp),                // input wire [255 : 0] din
//  .wr_en(wr_en_tmp),            // input wire wr_en
//  .valid(valid),
//  .rd_en(rd_en),            // input wire rd_en
//  .dout(dout),              // output wire [255 : 0] dout
//  .full(),              // output wire full
//  .empty(empty),            // output wire empty
//  .data_count(data_count)  // output wire [8 : 0] data_count
//);
 
endmodule
