`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:08:14 01/28/2023
// Design Name:   univ_bin_counter
// Module Name:   /home/ise/Desktop/UniversalBinaryCounter/univ_binary_counter_tb.v
// Project Name:  UniversalBinaryCounter
//Author Name: Ummidi Chandrika
//
// Verilog Test Fixture created by ISE for module: univ_bin_counter

////////////////////////////////////////////////////////////////////////////////

module univ_bin_counter_tb;

	// Inputs
	reg clk;
	reg reset;
	reg syn_clr;
	reg load;
	reg en;
	reg up;
	reg [7:0] d;

	// Outputs
	wire max;
	wire min;
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	univ_bin_counter uut (
		.clk(clk), 
		.reset(reset), 
		.syn_clr(syn_clr), 
		.load(load), 
		.en(en), 
		.up(up), 
		.d(d), 
		.max(max), 
		.min(min), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		syn_clr = 0;
		load = 0;
		en = 0;
		up = 0;
		d = 0;

		#10 reset =1; syn_clr=1; load=1; en=1;up=1; d=1;
		#10 reset =0; syn_clr=0; load=1; en=1;up=1; d=1;
		#10 reset =0; syn_clr=0; load=0; en=1;up=1; d=1;
		
		#400 reset =0;syn_clr=0 ; load=0; en=1;up=0; d=1;
     

	end
	always #5 clk=~clk;
	
	
	initial
	begin 
	$monitor(" Reset=%b | Sync_clr=%b | Load=%b| En=%b | Up=%b| D=%b | Q=%b",reset,syn_clr,load,en,up,d,q);
	#1000 $finish;
	end
      
endmodule
