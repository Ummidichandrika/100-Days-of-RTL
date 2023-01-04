`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:55:48 01/04/2023
// Design Name:   pipo_reg
// Module Name:   /home/ise/Desktop/pipo/pipo_reg_tb.v
// Project Name:  pipo
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipo_reg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pipo_reg_tb;

reg clk,clear;

wire [3:0] q;
reg [3:0] d;

pipo_reg uut (.clk(clk), .clear(clear),.d(d),.q(q));

initial begin

clk = 0;

clear = 1;


#5 clear=1'b0;


#5 d=4'b0011;
#5 d=4'b0111;
#5 d=4'b1011;
#5 d=4'b1001;
#5 d=4'b1111;
#5 d=4'b0001;

end

always #1 clk = ~clk;


initial 
begin
$monitor(" Data In = %b | Data out=%b",d,q);
#150 $stop;
end

endmodule



