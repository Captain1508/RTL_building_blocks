`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Aman Sharma
// 
// Create Date: 27.01.2026 19:56:38
// Design Name: 
// Module Name: mux4
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


module mux4#(
parameter N=128
)
(
input [N-1:0]in0,
input [N-1:0]in1,
input [N-1:0]in2,
input [N-1:0]in3,
input [1:0]sel,
output [N-1:0]y
);
wire [N-1:0]y0,y1;
mux2 #(N)m0(
            .a(in0),
            .b(in1),
            .sel(sel[0]),
            .y(y0)
            );
mux2 #(N)m1(
            .a(in2),
            .b(in3),
            .sel(sel[0]),
            .y(y1)
            );
mux2 #(N)m2(
            .a(y0),
            .b(y1),
            .sel(sel[1]),
            .y(y)
            );
endmodule
