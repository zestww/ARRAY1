`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/05 23:32:36
// Design Name: 
// Module Name: rw_rev
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

module rw_rev(
input clk,
input rst,

input [127 : 0] din,
input wr_en,
///*写完成的标志
//*/
//input init_done,

/*
 *hbm写数据总线0
 */
output  [127 : 0] AXI_WDATA,
input   AXI_WREADY,
output  AXI_WLAST,
output  [15 : 0]  AXI_WSTRB,
//output  [31 : 0]  AXI_WDATA_PARITY,
output  AXI_WVALID,

/*
 *ddr写地址总线
 */
output [28 : 0] AXI_AWADDR,
output [1 : 0] AXI_AWBURST,
output [3 : 0] AXI_AWCACHE,
output [3 : 0] AXI_AWID,
output [7 : 0] AXI_AWLEN,

output [0 : 0] AXI_AWLOCK,
output [2 : 0] AXI_AWPROT,
output [3 : 0] AXI_AWQOS,

output [2 : 0] AXI_AWSIZE,
output AXI_AWVALID,
input AXI_AWREADY,

input [3:0] AXI_BID,
output AXI_BREADY,
input AXI_BRESP,
input AXI_BVALID,


output [28 : 0] AXI_ARADDR,
output [1 : 0] AXI_ARBURST,

output [3 : 0] AXI_ARCACHE,


output [3 : 0] AXI_ARID,
output [7 : 0] AXI_ARLEN,

output AXI_ARLOCK,
output AXI_ARPROT,
output AXI_ARQOS,
input AXI_ARREADY,

output [2 : 0] AXI_ARSIZE,
output AXI_ARVALID,

/*
 *hbm读数据总线
 */
//input [31 : 0] AXI_RDATA_PARITY0,
input [127 : 0] AXI_RDATA,
input [3 : 0] AXI_RID,
input AXI_RLAST,
input [1 : 0] AXI_RRESP,
input AXI_RVALID,
output AXI_RREADY
    );
wire init_done;
    
read_rev rd(
    .clk(clk),
    /*
     *写完成的标志
     */
    .init_done(init_done),
    /*
     *ddr读地址总线
     */
    .AXI_ARADDR(AXI_ARADDR),
    .AXI_ARBURST(AXI_ARBURST),
    .AXI_ARCACHE(AXI_ARCACHE),
    .AXI_ARID(AXI_ARID),
    .AXI_ARLEN(AXI_ARLEN),
    .AXI_ARLOCK(AXI_ARLOCK),
    .AXI_ARPROT(AXI_ARPROT),
    .AXI_ARQOS(AXI_ARQOS),
    .AXI_ARREADY(AXI_ARREADY),
    .AXI_ARSIZE(AXI_ARSIZE),
    .AXI_ARVALID(AXI_ARVALID),
    /*
     *ddr读数据总线
     */
    .AXI_RDATA(AXI_RDATA),
    .AXI_RID(AXI_RID),
    .AXI_RLAST(AXI_RLAST),
    .AXI_RRESP(AXI_RRESP),
    .AXI_RVALID(AXI_RVALID),
    .AXI_RREADY(AXI_RREADY)
);

write_rev wr(
    .clk(clk),
    .rst(rst),
    
    .din(din),
    .wr_en(wr_en),
    
    .init_done(init_done),
    
    /*
     *ddr写数据总线
     */
    .AXI_WDATA(AXI_WDATA),
    .AXI_WREADY(AXI_WREADY),
    .AXI_WLAST(AXI_WLAST),
    .AXI_WSTRB(AXI_WSTRB),
    .AXI_WVALID(AXI_WVALID),
    
    /*
     *ddr写地址总线
     */
    .AXI_AWADDR(AXI_AWADDR),
    .AXI_AWBURST(AXI_AWBURST),
    .AXI_AWCACHE(AXI_AWCACHE),
    .AXI_AWID(AXI_AWID),
    .AXI_AWLEN(AXI_AWLEN),
    
    .AXI_AWLOCK(AXI_AWLOCK),
    .AXI_AWPROT(AXI_AWPROT),
    .AXI_AWQOS(AXI_AWQOS),
    
    .AXI_AWSIZE(AXI_AWSIZE),
    .AXI_AWVALID(AXI_AWVALID),
    .AXI_AWREADY(AXI_AWREADY),
    
    .AXI_BID(AXI_BID),
    .AXI_BREADY(AXI_BREADY),
    .AXI_BRESP(AXI_BRESP),
    .AXI_BVALID(AXI_BVALID)
);   
    
    
    
    
    
    
    
    
    
    
endmodule
