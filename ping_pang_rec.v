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
`include "define.v" 

module ping_pang_rec(
input wr_clk,
input rd_clk,
input rst,

input [`DATA_W - 1 : 0] din,
input wr_en,
/*向外输出写准备好信号，为1时可写入数据
 */
output reg wrdy = 0,
/*表明最后一组数据的最后一个传输完成(暂不考虑)
 */
input wlast,

/*向外输出读准备好信号，为1时可读取数据
 */
output reg rrdy = 0,
input rd_en,
/*输送至sa
 */
output reg [`DATA_W - 1 : 0] col_data_in = 0,
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
reg [`DATA_W - 1 : 0] din0 = 0;
reg [`DATA_W - 1 : 0] din1 = 0;
wire full0;
wire full1;
reg rd_en0 = 0;
reg rd_en1 = 0;
wire [`DATA_W - 1 : 0] dout0 = 0;
wire [`DATA_W - 1 : 0] dout1 = 0;
wire empty0;
wire empty1;


/*WO状态下写FIFO0--W1状态下写F1
 */
localparam IDLE = 3'b001;
localparam W0 = 3'b010;
localparam W1 = 3'b100;

reg [2:0] next_state_w;
reg [2:0] current_state_w;

always@(posedge wr_clk or posedge rst) begin
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


always@(posedge wr_clk or posedge rst) begin
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

/*每写512个数就要切换FIFO连接
 */
reg [8:0] wcnt;
always@(posedge wr_clk or posedge wcnt) begin
    if(rst) wcnt <= 0;
    else if(wr_en) wcnt <= wcnt + 1;
end

/*写入512个数认为已经满了，阻止后续数据传入
 *否则FIFO有一个空了则继续传输
 */
always@(posedge wr_clk) begin
    if((wcnt == 511) && wr_en) wrdy <= 0;
    else if(empty0 || empty1) wrdy <= 1;
end

///*只要有一个FIFO满了就不能再接收数据
// */
//assign wrdy = ~(full0 || full1);




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

///*输入读使能打一拍
// */
//reg rd_en_pre_c = 0;
//always@(posedge rd_clk) begin
//    rd_en_pre_c <= rd_en_pre;
//end

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
            rd_en0 <= rd_en; rd_en1 <= 0;
        end
        R1:begin
            rd_en0 <= 0; rd_en1 <= rd_en;
        end
        default:begin
            rd_en0 <= 0; rd_en1 <= 0;
        end
        endcase
    end
end



//always@(posedge clk) begin
//    data_col_in <= dout;
//    valid_col_in <= valid;
//end

fifo_generator_2 ic_fifo0 (
  .rst(rst),        // input wire rst
  .wr_clk(wr_clk),  // input wire wr_clk
  .rd_clk(rd_clk),  // input wire rd_clk
  .din(din0),        // input wire [127 : 0] din
  .wr_en(wr_en0),    // input wire wr_en
  .rd_en(rd_en0),    // input wire rd_en
  .dout(dout0),      // output wire [127 : 0] dout
  .full(full0),      // output wire full
  .empty(empty0)    // output wire empty
);
    
    
fifo_generator_2 ic_fifo1 (
  .rst(rst),        // input wire rst
  .wr_clk(wr_clk),  // input wire wr_clk
  .rd_clk(rd_clk),  // input wire rd_clk
  .din(din1),        // input wire [127 : 0] din
  .wr_en(wr_en1),    // input wire wr_en
  .rd_en(rd_en1),    // input wire rd_en
  .dout(dout1),      // output wire [127 : 0] dout
  .full(full1),      // output wire full
  .empty(empty1)    // output wire empty
);
    
    
    
endmodule
