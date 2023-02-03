`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:00:16 02/03/2023 
// Module Name:    single_port_ram 
// Project Name:  Single Port RAM
//Author Name: Ummidi Chandrika

//////////////////////////////////////////////////////////////////////////////////
module single_port_ram
#(parameter addr_width = 6,
parameter data_width = 8,
parameter depth = 64)
                (
                input [data_width-1:0] data,  //this is input data
				input [addr_width-1:0] addr,  //address
				input we,clk,                 //we is read and write control,high is write, low is read
				output [data_width-1:0] q     //q is outptut data
				);
				

//Declare RAM variable
reg [data_width-1:0] ram [depth-1:0];

//address register
reg [addr_width-1:0] addr_reg;

always @(posedge clk)
begin
if(we)                     //if we=1 write data into RAM
     ram[addr] <=data; 
	 else                  //if we=0 then read data out
	     addr_reg <=addr;  //gets address value from outisde of module
end
assign q= ram[addr_reg];  //read data to q

endmodule 
