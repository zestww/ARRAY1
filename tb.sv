`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/06 00:24:27
// Design Name: 
// Module Name: tb
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


module tb(

    );
reg [127:0] din = 0;
reg reset;
reg rst_n;
wire ui_clk;
reg user_si570_sysclk_clk_n;
reg user_si570_sysclk_clk_p;
reg wr_en = 0; 
wire c0_init_calib_complete;

initial begin
    user_si570_sysclk_clk_n = 0;
    user_si570_sysclk_clk_p = 1;
    
    reset = 1;
    rst_n = 0;
    
    #66
    rst_n = 1;
    
    #300
    reset = 0;
    
end

always#3.333 user_si570_sysclk_clk_n = ~user_si570_sysclk_clk_n;
always#3.333 user_si570_sysclk_clk_p = ~user_si570_sysclk_clk_p;


reg [6:0] rst_cnt = 127;
always@(posedge ui_clk) begin
    if(reset || (~c0_init_calib_complete)) begin
        rst_cnt <= 127;
    end
    else if(rst_cnt > 0) begin
        rst_cnt <= rst_cnt - 1;
    end
end


always@(posedge ui_clk) begin
    if((~c0_init_calib_complete) && (rst_cnt > 0)) begin
        din <= 0;
        wr_en <= 0;
    end
    else if(din < 500) begin
        din <= din + 1;
        wr_en <= 1;
    end
    else begin
        wr_en <= 0;
    end
end
    
    
design_1_wrapper wrapper(
.din(din),
.reset(reset),
.rst_n(rst_n),
.ui_clk(ui_clk),
.user_si570_sysclk_clk_n(user_si570_sysclk_clk_n),
.user_si570_sysclk_clk_p(user_si570_sysclk_clk_p),
.wr_en(wr_en), 
.c0_init_calib_complete(c0_init_calib_complete)
);
    
    
    
    
    
    
endmodule
