`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:22:52 02/04/2023 
// Module Name:    dual_port_ram 
// Author  Name:  Ummidi Chandrika

//////////////////////////////////////////////////////////////////////////////////
module dual_port_ram 
     # (parameter data_width=8,
	      parameter addr_width=4,
			parameter depth=16
			)
    (   input clk, //clock
        input wr_en,    //write enable for port 0
        input [data_width-1:0] data_in,    //Input data to port 0.
        input [addr_width-1:0] addr_in_0,  //address for port 0
        input [addr_width-1:0] addr_in_1,  //address for port 1
        input port_en_0,    //enable port 0.
        input port_en_1,    //enable port 1.
        output [data_width-1:0] data_out_0,    //output data from port 0.
        output [data_width-1:0] data_out_1    //output data from port 1.
    );

//memory declaration.S
reg [data_width-1:0] ram[0:depth-1];

//writing to the RAM
always@(posedge clk)
begin
    if(port_en_0 == 1 && wr_en == 1)    //check enable signal and if write enable is ON
        ram[addr_in_0] <= data_in;
end

//always reading from the ram, irrespective of clock.
assign data_out_0 = port_en_0 ? ram[addr_in_0] : 'dZ;   
assign data_out_1 = port_en_1 ? ram[addr_in_1] : 'dZ;   

endmodule 
