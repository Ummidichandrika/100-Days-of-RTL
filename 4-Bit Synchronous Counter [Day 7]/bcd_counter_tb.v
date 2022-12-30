`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:49:58 12/30/2022
// Design Name:   bcd_counter
// Module Name:   /home/ise/Desktop/bcd_counter/bcd_counter_tb.v
// Project Name:  bcd_counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcd_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bcd_counter_tb;

	// Inputs
	reg [0:0] clock;
	reg clear;

	// Outputs
	wire [3:0] count;

	// Instantiate the Unit Under Test (UUT)
	bcd_counter uut (
		.clock(clock), 
		.count(count), 
		.clear(clear)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		clear = 1;
#25 clear=0;
#250 clear=1;
#25 clear=0;
#450 $finish;

		end
	always 
	#10 clock=~clock;
      
endmodule

