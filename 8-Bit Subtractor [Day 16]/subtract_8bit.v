`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:29:50 01/08/2023
// Design Name:   subtract_8bit
// Module Name:   /home/ise/Desktop/eightbitsubtraction/subtract_8bit_tb.v
// Project Name:  eightbitsubtraction
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: subtract_8bit
module sub_8bit_bh_tb;
reg [7:0] a, b; //inputs are reg for test bench
wire [7:0] result; //outputs are wire for test bench

//instantiate the module into the test bench
subtract_8bit dut(a,b,result);
//apply input vectors
initial
begin
#0 a = 8'b0000_0011; b = 8'b0000_0001; //3-1 = 2
#10 a = 8'b0000_0100; b = 8'b0000_0011; //4-3 = 1
#10 a = 8'b0000_0110; b = 8'b0000_0011; //6-3 = 3
#10 a = 8'b0000_1110; b = 8'b0000_0111; //14-7 = 7
#10 a = 8'b0000_1100; b = 8'b0000_0101; //12-5 = 7
#10 a = 8'b0100_1100; b = 8'b0001_0101; //76-21 = 55
#10 a = 8'b0011_0001; b = 8'b0001_1000; //49-24 = 25
#10 a = 8'b0111_0001; b = 8'b0011_1001; //113-57 = 56
#10 a = 8'b1000_0001; b = 8'b1000_0001; //-127+127=0
#10 a = 8'b0110_0001; b = 8'b0010_0001; //97-33 = 64
#10 a = 8'b1100_0110; b = 8'b1000_0101; //-58+123=65
#10 a = 8'b0101_0101; b = 8'b0000_1111; //85-15 = 70
#10 a = 8'b1111_1000; b = 8'b0000_0010; //-8-2 = -10
end
initial 
begin
//display variables
$monitor ("a = %b, b = %b, rslt = %b", a, b, result);
#200 $finish;
end
endmodule
