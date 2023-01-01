`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:57:40 01/01/2023
// Design Name:   comparator_n_bit
// Module Name:   /home/ise/Desktop/Comparator/comparator_nbit_tb.v
// Project Name:  Comparator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator_n_bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comparator_nbit_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;

	// Outputs
	wire Lesser;
	wire Greater;
	wire Equal;

	// Instantiate the Unit Under Test (UUT)
	comparator_nbit uut (
		.a(a), 
		.b(b), 
		.Lesser(Lesser), 
		.Greater(Greater), 
		.Equal(Equal)
	);
initial begin
	$monitor("    A=%d    B=%d   Lesser=%b     Greater=%b    Equal=%b   ",a,b,Lesser,Greater,Equal);
	end

	initial begin
	   a = 2;b = 2;
		#100 a=22;b=444;
		#100 a=444;b=555;
		#100 a=777;b=111;
		#100 a=8888;b=8888;
		#500 $finish;
        

	end
      
endmodule

	

