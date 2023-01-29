`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:06:47 01/29/2023
// Design Name:   cn_flipflop
// Module Name:   /home/ise/cn/cn_ff_tb.v
// Project Name:  CN Flipflop using D flipflop and 2X1 Mux
//Author Name : Ummidi Chandrika
// 
////////////////////////////////////////////////////////////////////////////////

module cn_flipflop_tb;

	// Inputs
	reg c;
	reg n;
	reg clk;

	// Outputs
	wire q,qbar;

	// Instantiate the Unit Under Test (UUT)
	cn_flipflop uut (
		.c(c), 
		.n(n), 
		.clk(clk), 
		.q(q),
		.qbar(qbar)
	);

	initial begin
		// Initialize Inputs
		c = 0;
		n = 0;
		clk = 0;
		
		#10 c=0;n=1;
		#10 c=1;n=0;
		#10 c=1;n=1;

	
	end
	always #5 clk=~clk;
	initial
	begin $monitor("C=%b | N=%b | Q=%b | Qbar=%b",c,n,q,qbar);
	#100 $finish;
	end
      
endmodule

