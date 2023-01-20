`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:42:02 01/20/2023
// Design Name:   Binary_7Segment
// Module Name:   /home/ise/Desktop/seven_segment/binary_7segment_tb.v
// Project Name:  seven_segment
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Binary_7Segment
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Binary_7segment_tb;

	// Inputs

	reg [3:0] Binary_Num;
	integer i;

	// Outputs
	wire [6:0] Segment;

	// Instantiate the Unit Under Test (UUT)
	Binary_7Segment uut (
		.Binary_Num(Binary_Num), 
		.Segment(Segment)
	);

		
		
		initial
		begin
		for(i=0;i<10;i=i+1)
		begin
		Binary_Num=i;
		#10;
		end
		end
		initial
		begin
		$monitor("Binary Num=%b | ABCDEFG=%b",Binary_Num,Segment);
	   #400 $finish;
		end


      
endmodule

