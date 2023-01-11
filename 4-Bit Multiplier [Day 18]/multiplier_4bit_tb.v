`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:10:06 01/09/2023
// Design Name:   multiplier_4bit
// Module Name:   /home/ise/Desktop/multiplier/multiplier_4bit_tb.v
// Project Name:  multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplier_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multiplier_4bit_tb();
reg [3:0] a,b;
wire [7:0] product;

// Instantiate the design module
multiplier_4bit dut(a,b,product);

initial
begin
#0  a = 4'b0110; b = 4'b0110;
#10 a = 4'b0010; b = 4'b0110;
#10 a = 4'b0111; b = 4'b0101;
#10 a = 4'b0111; b = 4'b0111;
#10 a = 4'b0101; b = 4'b0101;
#10 a = 4'b0111; b = 4'b0011;
#10 a = 4'b0100; b = 4'b0110;

end

//display variables
initial
begin
$monitor ("A = %b, B = %b, Product = %b", a, b, product);
#100 $finish;
end 

 endmodule
