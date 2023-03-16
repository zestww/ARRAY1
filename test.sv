`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/25 14:18:15
// Design Name: 
// Module Name: test
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
`define Data_width          32

module test(

    );
reg clk;
reg rst;
    
reg wr_en1; 
reg wr_en2; 
reg wr_en3;  
    
reg [`Data_width - 1 : 0] din1;    
reg [`Data_width - 1 : 0] din2;   
reg [`Data_width - 1 : 0] din3;   


reg valid_row_in1; 
reg valid_row_in2; 
reg valid_row_in3;  
    
reg [`Data_width - 1 : 0] data_row_in1;    
reg [`Data_width - 1 : 0] data_row_in2;   
reg [`Data_width - 1 : 0] data_row_in3;  

/*testÄ£¿éµÄ¸´Î»*/
reg rst_c;

initial begin
    clk = 0;
    rst = 1;
    rst_c = 1;
    #300;
    rst = 0;
    #5000;
    rst_c = 0;
end

always #10 clk = ~clk;

reg [7:0] cnt;

always@(posedge clk or posedge rst_c) begin
    if(rst_c) begin
        wr_en1 <= 0; 
        wr_en2 <= 0; 
        wr_en3 <= 0;  
            
        din1 <= 0;    
        din2 <= 0;   
        din3 <= 0; 
        
        cnt <= 0;
    end
    else if(cnt < 200) begin
        wr_en1 <= 1; 
        wr_en2 <= 1; 
        wr_en3 <= 1;  
            
        din1 <= $urandom_range(5,2);    
        din2 <= $urandom_range(5,2);  
        din3 <= $urandom_range(5,2);   
        
        cnt <= cnt + 1;
    end
    else begin
        wr_en1 <= 0; 
        wr_en2 <= 0; 
        wr_en3 <= 0;  
            
        din1 <= 0;    
        din2 <= 0;   
        din3 <= 0; 
    end
    
end

always@(posedge clk or posedge rst_c) begin
    if(rst_c) begin
        valid_row_in1 <= 0; 
        valid_row_in2 <= 0; 
        valid_row_in3 <= 0;  
            
        data_row_in1 <= 0;    
        data_row_in2 <= 0;   
        data_row_in3 <= 0; 
    end
    else begin
        valid_row_in1 <= 1; 
        valid_row_in2 <= 1; 
        valid_row_in3 <= 1;  
            
        data_row_in1 <= 3;    
        data_row_in2 <= 4;    
        data_row_in3 <= 5;    
    end
end






top tp(
.clk(clk),
.rst(rst),

.wr_en1(wr_en1),
.wr_en2(wr_en2),
.wr_en3(wr_en3),

.din1(din1),
.din2(din2),
.din3(din3),

.data_row_in1(data_row_in1),
.data_row_in2(data_row_in2),
.data_row_in3(data_row_in3),

.valid_row_in1(valid_row_in1),
.valid_row_in2(valid_row_in2),
.valid_row_in3(valid_row_in3)
);  
    
    
    
    
    
endmodule
