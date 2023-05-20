`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2023 15:07:17
// Design Name: 
// Module Name: dff
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


module dff(
    input clk, din,
    output reg dout
    );
always@(posedge clk)
begin
dout <= din;
end  
endmodule
 
module top(clk, a, din, dout);
input a,din;
output  dout;
(* gated_clock = "yes" *)input clk;  
wire t1;
 
assign t1 = a & clk;
dff d1 (t1,din,dout);
 
 
endmodule