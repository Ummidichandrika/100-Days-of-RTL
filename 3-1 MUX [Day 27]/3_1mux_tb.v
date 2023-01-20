`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:32:48 01/19/2023
// Design Name:   mux
// Module Name:   /home/ise/Desktop/bin_excess3/mux_tb.v
// Project Name:  bin_excess3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_tb;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg [1:0] s;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.a(a), 
		.b(b), 
		.c(c),  
		.s(s), 
		.o(o)
	);

	initial begin
		a=0;b=0;c=0;s=2'b00;
		#10 a=1;b=0;c=0;s=2'b01;
		#10 a=1;b=1;c=0;s=2'b10;
		#10 a=1;b=0;c=0;s=2'b00;
		#10 a=0;b=0;c=1;s=2'b01;
		#10 a=1;b=0;c=0;s=2'b10;
		#10 a=0;b=1;c=0;s=2'b00;
	end
	initial
	begin
	$monitor("A=%b B=%b C=%b Sel=%b",a,b,c,s);
	#200 $finish;
	end
      
endmodule
