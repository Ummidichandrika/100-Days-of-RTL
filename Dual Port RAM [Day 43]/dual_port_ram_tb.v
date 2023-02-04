`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Create Date:   06:31:17 02/04/2023
// Design Name:   dual_port_ram
// Module Name:   /home/ise/dual_port_ram/dual_port_ram_tb.v
// Project Name:  dual_port_ram
//Author Name: Ummidi Chandrika
////////////////////////////////////////////////////////////////////////////////

module dual_port_ram_tb;
parameter addr_width = 4;
parameter data_width = 8;
parameter depth = 16;
integer i;
	// Inputs
	reg clk;
	reg wr_en;
	reg [data_width-1:0] data_in;
	reg [addr_width-1:0] addr_in_0;
	reg [addr_width-1:0] addr_in_1;
	reg port_en_0;
	reg port_en_1;

	// Outputs
	wire [data_width-1:0] data_out_0;
	wire [data_width-1:0] data_out_1;

	// Instantiate the Unit Under Test (UUT)
	dual_port_ram uut (
		.clk(clk), 
		.wr_en(wr_en), 
		.data_in(data_in), 
		.addr_in_0(addr_in_0), 
		.addr_in_1(addr_in_1), 
		.port_en_0(port_en_0), 
		.port_en_1(port_en_1), 
		.data_out_0(data_out_0), 
		.data_out_1(data_out_1)
	);

 always
        #5 clk = ~clk;
initial begin
        clk = 1;
        addr_in_1 = 0;
        port_en_0 = 0;
        port_en_1 = 0;
        wr_en = 0;
        data_in = 0;
        addr_in_0 = 0;  
        #20;
        port_en_0 = 1;  
        wr_en = 1;
      for(i=1; i <= 16; i = i + 1) begin
            data_in = i;
            addr_in_0 = i-1;
            #10;
        end
        wr_en = 0;
        port_en_0 = 0;  
        port_en_1 = 1;  
        for(i=1; i <= 16; i = i + 1) begin
            addr_in_1 = i-1;
            #10;
        end
        port_en_1 = 0;
    end
      
endmodule
