`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/07 20:33:14
// Design Name: 
// Module Name: noc_parameter
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

`ifndef  DEFINE_V
`define  DEFINE_V

//----------------------------------------------------------------------
// Top Definitions
//----------------------------------------------------------------------
/* pe单元流水级数 */           
`define PIP_STG          3       
/* ic读写指针位宽 */      
`define ICNT          4   
/* DDR4位宽 */      
`define DDR_W 128
/* pe数据位宽 */      
`define DATA_W 8
/* 每个ic_group包含ic个数 */     
`define IC_N 16




`endif