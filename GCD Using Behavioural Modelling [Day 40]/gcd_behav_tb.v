`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:26:04 02/01/2023
// Design Name:   gcd_beh
// Module Name:   /home/ise/gcd/gcd_beh_tb.v
// Project Name:  gcd using Behavioural Modelling
// Author Name: Ummidi chandrika
// Verilog Test Fixture created by ISE for module: gcd_beh_tb
// 
////////////////////////////////////////////////////////////////////////////////

module gcd_beh_tb;
parameter W=7;
	// Inputs
	reg [W-1:0] A;
	reg [W-1:0] B;

	// Outputs
	wire [W-1:0] GCD;

	// Instantiate the Unit Under Test (UUT)
	gcd_beh uut (
		.A(A), 
		.B(B), 
		.GCD(GCD)
	);

	initial begin
        A=90;B=86;
		#10 A=48; B=12;
		#10 A=65;B=4;
		#10 A=48;B=7;
		#10 A=8;B=2;
		#10 A=125;B=6;
		#10 A=85;B=76;
		#10 A=54;B=44;
		#10 A=95;B=32;
		#10 A=109;B=91;
		#10 A=75;B=34;
		

	end
      initial
		begin
		$monitor("A= %d | B=%d | GCD=%d", A,B,GCD);
		#200 $finish;
		end
endmodule

