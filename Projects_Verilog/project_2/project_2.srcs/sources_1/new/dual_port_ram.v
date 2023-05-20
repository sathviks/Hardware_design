`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2023 10:03:53
// Design Name: 
// Module Name: dual_port_ram
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


module dual_port_ram(
    input write,clk,rst,rd_addr,wr_addr,read,write,
   input data_in,
     rd_addrs,wr_addrs,
  output reg   data_out
    
    );
    
    
    parameter ram_width =8;
    parameter ram_depth =16;
    parameter addr_size =4;
   
   
   input write,clk,rst,rd_addr,wr_addr,read,write;
     input[ram_width-1:0] data_in;
     input[addr_size-1:0] rd_addrs,wr_addrs;
     output reg [ram_width-1:0] data_out;
   
   
   
   
     reg[ram_width-1:0]mem[ram_depth-1:0];
     integer i; 
     
     
     always@(posedge clk)
     begin
     if(rst)
     data_out<=0;
     for(i=0;i<ram_depth;i=i+1)
     mem[i]<=0;
     end 
else
     begin
     if(write)
     mem[wr_addr] <= data_in;
     if (read)
     data_out <= mem[rd_addr];
     end    
       
     
     
    
     
     
    
    
    
    
    
    
endmodule
