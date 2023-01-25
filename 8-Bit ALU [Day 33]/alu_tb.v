`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:45:33 01/25/2023
// Design Name:   alu_8_bh
// Project Name:  alu
// Author Name: Ummidi Chandrika

////////////////////////////////////////////////////////////////////////////////

module alu_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg [2:0] opcode;

	// Outputs
	wire [7:0] rslt;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.a(a), 
		.b(b), 
		.opcode(opcode), 
		.rslt(rslt)
	);

	
		initial //apply input vectors
begin
//add operation 1 + 2 and 6 + 6
#0 a = 4'b0001; b = 4'b0010; opcode = 3'b000;
#10 a = 4'b0110; b = 4'b0110; opcode = 3'b000;
//subtract operation 12 - 3 and 13 - 10
#10 a = 4'b1100; b = 4'b0011; opcode = 3'b001;
#10 a = 4'b1101; b = 4'b1010; opcode = 3'b001;
//multiply operation 12 x 7 and 15 x 3
#10 a = 4'b1100; b = 4'b0111; opcode = 3'b010;
#10 a = 4'b1111; b = 4'b0011; opcode = 3'b010;
//AND operation
#10 a = 4'b1100; b = 4'b0111; opcode = 3'b011;
#10 a = 4'b1101; b = 4'b1011; opcode = 3'b011;
//OR operation
#10 a = 4'b0101; b = 4'b1011; opcode = 3'b100;
#10 a = 4'b1001; b = 4'b1010; opcode = 3'b100;
//NOT operation
#10 a = 4'b1001; opcode = 3'b101;
#10 a = 4'b0011; opcode = 3'b101;
//exclusive-OR operation
#10 a = 4'b0111; b = 4'b1011; opcode = 3'b110;
#10 a = 4'b1010; b = 4'b0101; opcode = 3'b110;
//exclusive-NOR operation
#10 a = 4'b0110; b = 4'b0110; opcode = 3'b111;
#10 a = 4'b0011; b = 4'b1110; opcode = 3'b111;

	end
	
	initial
	begin
	$monitor(" A=%b | B=%b | Opcode = %b | Result=%b",a,b,opcode,rslt);
	#300 $finish;
	end
      
endmodule

