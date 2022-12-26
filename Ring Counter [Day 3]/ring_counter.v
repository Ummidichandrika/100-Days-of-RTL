`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:28:33 12/26/2022 
// Design Name:    Ring counter
// Module Name:    ring_counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ring_counter(  clk,
     reset, count );
	 parameter WIDTH=4;
	 input clk,reset;
	 output reg [WIDTH-1:0] count;
	 always@(posedge clk)
begin
if(reset)
count={count[0],count[WIDTH-1:1]};
else 
count=4'b0001;
end
endmodule

