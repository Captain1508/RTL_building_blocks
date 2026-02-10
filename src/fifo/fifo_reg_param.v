`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Aman Sharma
// 
// Create Date: 09.02.2026 23:49:59
// Design Name: 
// Module Name: fifo_param
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


module fifo_param #(
parameter Width=8,
parameter Depth=4
)
(
input clk,
input rst,
input wr_en,
input rd_en,
input [Width-1:0]din,
output reg [Width-1:0]dout,
output full,
output empty
);
localparam ADDR_W=$clog2(Depth);
reg[Width-1:0] mem[0:Depth-1];
reg[ADDR_W-1:0] rd_ptr;
reg[ADDR_W-1:0] wr_ptr;
reg[ADDR_W-1:0] count;
assign full=(count==Depth);
assign empty=(count==0);
always@(posedge clk)
begin
if(rst) begin
wr_ptr<=0;
rd_ptr<=0;
count<=0;
dout<=0;
end 
else begin
case({wr_en && !full , rd_en && !empty})
2'b10:begin //write only
mem[wr_ptr]<=din;
wr_ptr<=wr_ptr+1;
count<=count+1;
end
2'b01:begin //read only
dout<=mem[rd_ptr];
rd_ptr<=rd_ptr+1;
count<=count-1;
end
2'b11:begin 
dout<=mem[rd_ptr];
mem[wr_ptr]<=din;
rd_ptr<=rd_ptr+1;
wr_ptr<=wr_ptr+1;
end
default: ;
endcase
end
end
endmodule
