//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Aman Sharma
// 
// Create Date: 28.01.2026 16:14:54
// Design Name: 
// Module Name: mealy_nonoverlap
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


module mealy_nonoverlap(
input wire clk,
input wire rst,
input wire ain,
output reg aout
    );
    localparam [1:0]
        s0=2'b00,
        s1=2'b01,
        s2=2'b10,
        s3=2'b11;
reg [1:0]state,next_state;
always@(posedge clk,negedge rst)
begin
    if(!rst)
        state<=s0;
    else 
        state<=next_state;
end
always@(*)
begin 
    next_state=state;
    aout=1'b0;
    case(state)
            s0:begin
                if(ain)
                    next_state=s1;
                    else
                        next_state=s0;
               end
            s1:begin
                if(ain)
                    next_state=s1;
                    else
                        next_state=s2;
                end
            s2:begin
                if(ain)
                    next_state=s3;
                    else 
                        next_state=s0;
               end
            s3:begin
                if(ain) begin
                            aout=1'b1;
                            next_state=s0;
                        end
                else begin
                        next_state=s2;
                     end
               end
            default begin
                        next_state=s0;
                        aout=1'b0;
                    end
    endcase
end 
endmodule
