`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Create Date:   04:01:34 02/03/2023
// Design Name:   single_port_ram
// Module Name:   /home/ise/single_port_ram/single_port_ram_tb.v
// Project Name:  single_port_ram
//Author Name: Ummidi Chandrika
// Verilog Test Fixture created by ISE for module: single_port_ram

////////////////////////////////////////////////////////////////////////////////

module single_port_ram_tb;
parameter addr_width = 6;
parameter data_width = 8;
parameter depth = 64;

	// Inputs
	reg [data_width-1:0] data;
	reg [addr_width:0] addr;
	reg we;
	reg clk;

	// Outputs
	wire [data_width-1:0] q;

	// Instantiate the Unit Under Test (UUT)
	single_port_ram uut (
		.data(data), 
		.addr(addr), 
		.we(we), 
		.clk(clk), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk=0;
		forever #5 clk=~clk;
end

// write data into the address 0,1,2 and read it out
initial begin
data=8'h01;
addr=5'd0;      //address 0
we=1'b1;        //write data
#10;

data=8'h02;
addr=5'd1;      //address 1
#10;

data=8'h03;
addr=5'd2;      //address 1
#10;
 
 //read operation
addr=5'd0;      //address 1
we=1'b0;        //read address 0, it should be data 01
#10;

addr=5'd1;       //read address 0, it should be data 02
#10;

addr=5'd2;       //read address 0, it should be data 02
#10;

end
endmodule

