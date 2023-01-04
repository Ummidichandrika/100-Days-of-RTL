`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:54:05 01/04/2023 
// Design Name: 
// Module Name:    pipo 
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
//////////////////////////////////////////////////////////////////////////////////
module pipo_reg(clk,clear,d,q);

input clk,clear;

output reg [3:0]  q;
input [3:0] d;


always @(posedge clk )
begin
if (clear)

q=  4'b0000;


else


q=d;
end


endmodule
