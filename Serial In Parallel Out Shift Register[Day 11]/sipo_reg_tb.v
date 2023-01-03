`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:09:10 01/03/2023
// Design Name:   sipo_reg
// Module Name:   /home/ise/Desktop/sipo_reg/sipo_reg_tb.v
// Project Name:  sipo_reg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sipo_reg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
/////////////////////////////////////////////////////////////////////////////
module sipo_reg_tb;

reg clk,clear,din;
wire [3:0] dout;

sipo_reg uut (.clk(clk), .clear(clear),.din(din),.dout(dout));

initial begin

clk = 0;

clear = 0;

din = 0;

#5 clear=1'b1;

#5 clear=1'b0;

#10 din=1'b1;

end

always #5 clk = ~clk;
always #10 din=~din;

initial
begin
$monitor(" Data Input = %b | Data output =%b",din,dout);
 #150 $finish;
 end

endmodule



