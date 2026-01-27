`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Aman Sharma
// 
// Create Date: 27.01.2026 19:44:03
// Design Name: 
// Module Name: mux2
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


module mux2 #(
parameter N= 128   //N-> data width 
)
(
input wire [N-1:0]a,
input wire [N-1:0]b,
input wire sel,
output wire [N-1:0]y
);
assign y = sel ? b : a;
endmodule
