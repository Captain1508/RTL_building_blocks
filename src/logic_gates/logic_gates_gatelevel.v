`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Aman Sharma
// 
// Create Date: 26.01.2026 22:58:03
// Design Name: 
// Module Name: logic_gates_gatelevel
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Basic logic gates using gate-level modeling
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module logic_gates_gatelevel(
        input wire a,
        input wire b,
        output wire and_out,
        output wire or_out,
        output wire not_out,
        output wire nand_out,
        output wire nor_out,
        output wire xor_out,
        output wire xnor_out
        );
        and(and_out,a,b);
        or(or_out,a,b);
        not(not_out,a);
        nand(nand_out,a,b);
        nor(nor_out,a,b);
        xor(xor_out,a,b);
        xnor(xnor_out,a,b);
        endmodule

