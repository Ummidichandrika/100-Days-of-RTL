`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:25:13 12/28/2022
// Design Name:   par_gen
// Module Name:   /home/ise/Desktop/parity_generator/parity_generator_tb.v
// Project Name:  parity_generator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: par_gen
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
///////////////////////////////////////////////////////////////////////////////

module par_gen_tb;

	// Inputs
	reg x;
	reg y;
	reg z;

	// Outputs
	wire result;

	// Instantiate the Unit Under Test (UUT)
	par_gen uut (
		.x(x), 
		.y(y), 
		.z(z), 
		.result(result)
	);

	initial begin

// Initialize Inputs

x = 0;

y = 0;

z = 0;

// Wait 100 ns for global reset to finish

#100;

// Add stimulus here

x = 0;

y = 0;

z = 1;

// Wait 100 ns for global reset to finish

#100;

x = 0;

y = 1;

z = 0;

// Wait 100 ns for global reset to finish

#100;

x = 0;

y = 1;

z = 1;

// Wait 100 ns for global reset to finish

#100;

x = 1;

y = 0;

z = 0;

// Wait 100 ns for global reset to finish

#100;

x = 1;

y = 0;

z = 1;

// Wait 100 ns for global reset to finish

#100;

x = 1;

y = 1;

z = 0;

// Wait 100 ns for global reset to finish

#100;

x = 1;

y = 1;

z = 1;

// Wait 100 ns for global reset to finish

#100;

end

endmodule

