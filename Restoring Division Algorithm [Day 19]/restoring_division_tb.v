`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:28:56 01/11/2023
// Design Name:   restoring_division
// Module Name:   /home/ise/Desktop/division/restoring_division_tb.v
// Project Name:  division
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: restoring_division
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module restoring_division_tb;


//inputs are reg for test bench
//outputs are wire for test bench
reg [7:0] a;
reg [3:0] b;
reg start;
wire [7:0]  result;

//Instantiate the design module
restoring_division dut(a,b,result,start);

initial //apply input vectors
begin
#0 start = 1'b0;
a = 8'b0000_1101; b = 4'b0101;
#10 start = 1'b1;
#10 start = 1'b0;
#10 a = 8'b00011000; b = 4'b0111;
#10 start = 1'b1;
#10 start = 1'b0;
#10 a = 8'b0101_0010; b = 4'b0110;
#10 start = 1'b1;
#10 start = 1'b0;
#10 a = 8'b0011_1000; b = 4'b0111;
#10 start = 1'b1;
#10 start = 1'b0;
#10 a = 8'b0110_0100; b = 4'b0111;
#10 start = 1'b1;
#10 start = 1'b0;
#10 a = 8'b0110_1110; b = 4'b0111;
#10 start = 1'b1;
#10 start = 1'b0;
#10 a = 8'b0010_0101; b = 4'b0011;
#10 start = 1'b1;
#10 start = 1'b0;
#10 a = 8'b0100_1000; b = 4'b0111;
#10 start = 1'b1;
#10 start = 1'b0;
#10 a = 8'b0101_0100; b = 4'b0110;
#10 start = 1'b1;
#10 start = 1'b0;
end

//Display Variables
initial
begin
$monitor ("Dividend = %b, Divisor = %b, Quotient = %b, Remainder = %b",
a, b, result[3:0], result[7:4]);
#300 $finish;
end
endmodule
