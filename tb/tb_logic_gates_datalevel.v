`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Aman Sharma
// 
// Create Date: 26.01.2026 23:56:34
// Design Name: 
// Module Name: logic_gates_datalevel_tb
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


module logic_gates_datalevel_tb;
reg a,b;
wire and_out,or_out,not_out,nand_out,nor_out,xor_out,xnor_out;
logic_gates_datalevel dut(
            .a(a),
            .b(b),
            .and_out(and_out),
            .or_out(or_out),
            .not_out(not_out),
            .nand_out(nand_out),
            .nor_out(nor_out),
            .xor_out(xor_out),
            .xnor_out(xnor_out)
);
            initial begin
            a=0;b=0;
            #10 a=0;b=1;
            #10 a=1;b=0;
            #10 a=1;b=1;
            #10 $finish;
            end
endmodule
