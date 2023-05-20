`timescale 1ns / 1ps
module tb();
reg a,b; 
wire sum,carry;
top1 dut(a,b,sum,carry);
initial
begin
a= 1;
b=1;
#10;
a=0;
b=1;
#20
a=1;
b=0;
end 
endmodule
