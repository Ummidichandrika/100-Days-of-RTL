`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:44:29 12/30/2022 
// Design Name: 
// Module Name:    bcd_counter 
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
module bcd_counter(
    input [0:0] clock,
    output [3:0] count,
    input clear
    );
	 
	reg [3:0] count;
	initial
	count=4'd0;
	always@(posedge clock)
	begin
	if(clear)
	count= 4'd0;
	else
	if(count==4'b1001)
	count=4'b0000;
	else
	count=count+1;
	end
	
	
	


endmodule
