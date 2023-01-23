`timescale 1ns / 1ps


// Create Date:   14:11:29 01/23/2023
//Author Name  Ummidi Chandrika
// Design Name:   comparator
// Module Name:   /home/ise/Desktop/comp_mux/comparator_mux_tb.v
// Project Name:  comp_mux

// Verilog Test Fixture created by ISE for module: comparator

////////////////////////////////////////////////////////////////////////////////

module comparator_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire greater;
	wire lesser;
	wire equal;

	// Instantiate the Unit Under Test (UUT)
	comparator uut (
		.a(a), 
		.b(b), 
		.greater(greater), 
		.lesser(lesser), 
		.equal(equal)
	);

	initial begin
		// Initialize Inputs
		a=0; b=0;
		#10 a=0;b=1;
		#10 a=1;b=0;
		#10 a=1;b=1;

	end
	
	initial 
	begin
	$monitor("A=%b | B=%b | Greater =%b | Lesser=%b | Equal=%b",a,b,greater,lesser,equal);
	#100 $finish;
	end
      
endmodule

