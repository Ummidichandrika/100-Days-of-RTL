`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:05:45 01/03/2023 
// Design Name: 
// Module Name:    sipo_reg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
module sipo_reg(clk,clear,din,dout);

input clk,din,clear;

output reg [3:0] dout;
reg [3:0] tmp;

always @(posedge clk )
begin
if (clear)
dout = 4'b0000;
else
tmp = dout >>1 ;
dout = {din,tmp[2:0]};
end



endmodule
