`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:15:38 01/04/2023
// Design Name:   piso_reg
// Module Name:   /home/ise/Desktop/piso/piso_reg_tb.v
// Project Name:  piso
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: piso_reg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module piso_reg_tb();
reg [3:0]d;
reg clk,sl;
wire q;
piso_reg d1(d, clk, sl, q);
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial
begin
sl=0;d=4'b1011;
#10 sl=1;
#10 sl=1;
#10 sl=1;
#10 sl=0;d=4'b0000;
#100 $finish;
end 
endmodule


	

