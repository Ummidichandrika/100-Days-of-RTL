`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:01:14 01/21/2023
// Design Name:   d_latch
// Module Name:   /home/ise/Desktop/dlatch/dlatch_tb.v
// Project Name:  dlatch
//AUTHOR NAME: UMMIDI CHANDRIKA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: d_latch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dlatch_tb;

	// Inputs
	reg d;
	reg clock;

	// Bidirs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	d_latch uut (
		.d(d), 
		.clock(clock), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		clock = 0;

	end
	
	always #10 d=~d;
	always #5 clock=~clock;
	
	initial
	begin
	$monitor("D=%b | Clock=%b | Output =%b",d,clock,q);
	#200 $finish;
	end
      
endmodule

