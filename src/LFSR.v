`timescale 1ns / 1ps

module LFSR( out,clk,rst);
input clk,rst;
output reg[3:0] out;
always@(posedge clk)
begin 
if(rst)
out=4'b1;
else
out={out[2:0],(out[3]^out[2])};
end
 
endmodule
