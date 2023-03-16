`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/10 22:52:19
// Design Name: 
// Module Name: ic
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

`include "define.v" 

module ic(
input wr_clk,
input rd_clk,
input rst,

input [`Data_width - 1 : 0] din,
input wr_en,
/*向外输出写准备好信号，为1时可写入数据
 */
output reg wrdy = 0,
/*表明最后一组数据的最后一个传输完成
 */
input wlast,

/*向外输出读准备好信号，为1时可读取数据
 */
output reg rrdy = 0,
input rd_en_pre,
output reg rd_en_nxt = 0,
/*输送至sa
 */
output reg [`Data_width - 1 : 0] col_data_in = 0,
output reg col_valid_in = 0,
output empty
    );
///*FIFO写片选:0-FIFO0;1--FIFO1
// *被选中的FIFO进行写入工作，写满切换
// */
//reg cs_w = 0;
///*FIFO读片选:0-FIFO0;1--FIFO1
// *被选中的FIFO进行写入工作，写满切换
// */
//reg cs_r = 0;


/*两个FIFO的写使能与写数据
 */
reg wr_en0 = 0;
reg wr_en1 = 0;
reg [`Data_width - 1 : 0] din0 = 0;
reg [`Data_width - 1 : 0] din1 = 0;
wire full0;
wire full1;
reg rd_en0 = 0;
reg rd_en1 = 0;
wire empty0;
wire empty1;


/*WO状态下写FIFO0--W1状态下写F1
 */
localparam IDLE = 3'b001;
localparam W0 = 3'b010;
localparam W1 = 3'b100;

reg [2:0] next_state_w;
reg [2:0] current_state_w;

always@(posedge rd_clk or posedge rst) begin
    if(rst) begin
        current_state_w <= IDLE;
    end
    else begin
        current_state_w <= next_state_w;
    end
end

always@(*) begin
    case(current_state_w)
    IDLE:begin
        if(empty0) next_state_w = W0;
        else if(empty1) next_state_w = W1;
        else next_state_w = IDLE;
    end
    W0:begin
        if(full0) next_state_w = IDLE;
        else next_state_w = W0;
    end
    W1:begin
        if(full1) next_state_w = IDLE;
        else next_state_w = W1;
    end
    default:begin
        next_state_w = IDLE;
    end
    endcase
end


always@(posedge rd_clk or posedge rst) begin
    if(rst) begin
        wr_en0 <= 0; wr_en1 <= 0; 
        din0 <= 0; din1 <= 0;
    end
    else begin
    case(next_state_w)
        IDLE:begin
            wr_en0 <= 0; wr_en1 <= 0;
            din0 <= 0; din1 <= 0;
        end 
        W0:begin
            wr_en0 <= wr_en; wr_en1 <= 0;
            din0 <= din; din1 <= 0;
        end
        W1:begin
            wr_en0 <= 0; wr_en1 <= wr_en;
            din0 <= 0; din1 <= din;
        end
        default:begin
            wr_en0 <= 0; wr_en1 <= 0;
            din0 <= 0; din1 <= 0;
        end
        endcase
    end
end






/*WO状态下写FIFO0--W1状态下写F1
 */
localparam INIT = 3'b001;
localparam R0 = 3'b010;
localparam R1 = 3'b100;

reg [2:0] next_state_r;
reg [2:0] current_state_r;

always@(posedge rd_clk or posedge rst) begin
    if(rst) begin
        current_state_r <= IDLE;
    end
    else begin
        current_state_r <= next_state_r;
    end
end

always@(*) begin
    case(current_state_r)
    INIT:begin
        if(full0) next_state_r = R0;
        else next_state_r = INIT;
    end
    R0:begin
        if(full1 & empty0) next_state_r = R1;
        else next_state_r = R0;
    end
    R1:begin
        if(full0 & empty1) next_state_r = R0;
        else next_state_r = R1;
    end
    default:begin
        next_state_r = INIT;
    end
    endcase
end

/*输入读使能打一拍
 */
reg rd_en_pre_c = 0;
always@(posedge rd_clk) begin
    rd_en_pre_c <= rd_en_pre;
end

always@(posedge rd_clk or posedge rst) begin
    if(rst) begin
        rd_en0 <= 0; rd_en1 <= 0; 
    end
    else begin
    case(next_state_r)
        INIT:begin
            rd_en0 <= 0; rd_en1 <= 0;
        end 
        R0:begin
            rd_en0 <= rd_en_pre_c; rd_en1 <= 0;
        end
        R1:begin
            rd_en0 <= 0; rd_en1 <= rd_en_pre_c;
        end
        default:begin
            rd_en0 <= 0; rd_en1 <= 0;
        end
        endcase
    end
end











wire [`Data_width - 1 : 0] dout;

always@(posedge rd_clk) begin
    rd_en_nxt <= rd_en_pre;
end

//always@(posedge clk) begin
//    data_col_in <= dout;
//    valid_col_in <= valid;
//end
    
fifo_generator_0 ic_fifo0 (
  .clk(clk),                // input wire clk
  .rst(rst),                // input wire rst
  .din(din0),                // input wire [31 : 0] din
  .wr_en(wr_en0),            // input wire wr_en
  .rd_en(rd_en_pre),            // input wire rd_en
  .dout(dout),              // output wire [31 : 0] dout
  .full(full0),              // output wire full
  .empty(empty0),            // output wire empty
  .valid(valid)           // output wire valid
);
    
//fifo_generator_0 ic_fifo1 (
//  .clk(clk),                // input wire clk
//  .rst(rst),                // input wire rst
//  .din(din1),                // input wire [31 : 0] din
//  .wr_en(wr_en1),            // input wire wr_en
//  .rd_en(rd_en_pre),            // input wire rd_en
//  .dout(dout),              // output wire [31 : 0] dout
//  .full(full1),              // output wire full
//  .empty(empty1),            // output wire empty
//  .valid(valid)           // output wire valid
//);   
    
    
    
endmodule
