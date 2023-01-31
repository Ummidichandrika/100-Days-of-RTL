`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:04:43 01/31/2023
// Project Name:  clk_div_odd_tb
//Author name: Ummidi Chandrika

////////////////////////////////////////////////////////////////////////////////

module clk_div_odd_tb;

	// Inputs
	reg clk_in;

	// Outputs
	wire clk_out;

	// Instantiate the Unit Under Test (UUT)
clk_div_odd uut (
		.clk_in(clk_in), 
		.clk_out(clk_out)
	);

	initial begin
		clk_in=1;
		end
	
	always #10 clk_in= ~clk_in;
	
	initial 
	#200 $finish;
      
endmodule

