`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Aman Sharma
// 
// Create Date: 28.01.2026 16:39:17
// Design Name: 
// Module Name: seq_detector_tb
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


module seq_detector_tb;
reg clk;
reg rst;
reg ain;
wire aout;

//change module name to whichever design we want to simulate respectively 
mealy_overlap dut(         
    .clk(clk),
    .rst(rst),
    .ain(ain),
    .aout(aout)
);
initial begin
clk=0;
forever #5 clk=~clk;
end

task drive_bit(input reg b);
begin 
    ain=b;
    @(posedge clk);
end
endtask 

reg[3:0]shift;
reg exp_now;
reg exp_delayed;

always@(posedge clk)begin
shift <= {shift[2:0],ain};
exp_now <= (shift==4'b1011);
exp_delayed <= exp_now;
end
always @(posedge clk) begin
    if (aout)
      $display("AOUT=1 at time %0t", $time);
  end
integer i;
reg [15:0]stimulus;
initial begin
rst = 1;
ain = 0;
shift = 0;  
@(posedge clk)
rst = 0;

stimulus=16'b1011_1011_0101_1011;
for(i=15;i>=0;i=i-1) begin
drive_bit(stimulus[i]);

if(aout!==exp_now && aout!==exp_delayed)begin
$display("FAIL at time %0t | ain=%b aout=%b exp_now=%b exp_delayed=%b",
                 $time, stimulus[i], aout, exp_now, exp_delayed);
$finish;
    end
end

$display(" TEST PASSED for sequence 1011 (Mealy/Moore, overlap/non-overlap)");
$finish;

end
endmodule

