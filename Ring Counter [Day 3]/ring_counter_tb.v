`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:34:09 12/26/2022
// Design Name:   ring_counter
// Module Name:   /home/ise/Desktop/ring_counter/ring_counter_tb.v
// Project Name:  ring_counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ring_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ring_counter_tb;

	// Inputs
	reg clk;
	reg reset;
	parameter WIDTH=4;

	// Outputs
	wire [WIDTH-1:0] count;

	// Instantiate the Unit Under Test (UUT)
	ring_counter uut (
		.clk(clk), 
		.reset(reset), 
		.count(count)
	);
always #10 clk=~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		$monitor ("T=%0t out=%b", $time, count);
 #50 reset=1;

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
	initial
	#300 $finish;
      
endmodule

