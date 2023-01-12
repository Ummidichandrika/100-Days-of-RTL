`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:41:52 01/12/2023
// Design Name:   master_slave
// Module Name:   /home/ise/Desktop/masterslave/master_slave_tb.v
// Project Name:  masterslave
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: master_slave
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module master_slave_tb;

	// Inputs
	reg s;
	reg r;
	reg clk;

	// Outputs
	wire qn;
	wire qn_bar;

	// Instantiate the Unit Under Test (UUT)
	master_slave uut (
		.s(s), 
		.r(r), 
		.clk(clk), 
		.qn(qn), 
		.qn_bar(qn_bar)
	);

	initial begin
		// Initialize Inputs
	clk=0;
	#10 s = 0;r = 0;
	#10 s = 0;r = 1;
   #10 s = 1;r = 0;
   #10 s = 1;r = 1;	
	#10 s = 0;r = 0;
   #10 s = 0;r = 1;
	end
	always #5 clk=~clk;
	
initial
begin
$monitor("S=%b, R=%b, Q=%b, Q_bar=%b",s,r,qn,qn_bar);
#200 $finish;
end
endmodule
