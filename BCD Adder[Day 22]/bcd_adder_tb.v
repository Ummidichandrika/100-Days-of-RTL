`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:22:53 01/14/2023
// Design Name:   bcdadd
// Module Name:   /home/ise/Desktop/bcd_adderr/bcd_adder_tb.v
// Project Name:  bcd_adderr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcdadd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BCD_adder_tb;
wire [3:0] S;
wire C;
reg [3:0]A, B;
reg C0;
BCD_adder F1(S, C, A, B, C0);
initial
begin
A[3:0] = 4'b0000; B = 4'b0000; C0 = 1'b0;
#10 A[3:0] = 4'b1001; B = 4'b1001; C0 = 1'b0;
#10 A[3:0] = 4'b1000; B = 4'b0011; C0 = 1'b0;
#10 A[3:0] = 4'b0001; B = 4'b0011; C0 = 1'b0;
#10 A[3:0] = 4'b0110; B = 4'b0011; C0 = 1'b0;
#10 A[3:0] = 4'b0110; B = 4'b1011; C0 = 1'b0;
#10 A[3:0] = 4'b0111; B = 4'b0101; C0 = 1'b0;
#10 A[3:0] = 4'b0110; B = 4'b0001; C0 = 1'b0;
end
initial
begin
$monitor("A=%b| B=%b| Cin=%b|BCD Sum=%b|Cout=%b",A,B,C0,S,C);
 #200 $finish;
 end
endmodule
