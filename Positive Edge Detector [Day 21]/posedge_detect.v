`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:46:48 01/12/2023 
// Design Name:    Positive Edge Detector Circuit
// Module Name:    edge_detector 
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
module edge_detector(
    input  data,    // Input data for which positive edge has to be detected
	 input clock,    // Input signal for clock
    output edge_detect  // Output signal that gives a pulse when a positive edge occurs
    );
	    reg data_d;    // Internal signal to store the delayed version of signal
	 
	 
	  // This always block ensures that sig_dly is exactly 1 clock behind sig
	always @ (posedge clock) begin
		data_d <= data;
	end
	// Combinational logic where sig is AND with delayed, inverted version of sig
    // Assign statement assigns the evaluated expression in the RHS to the internal net pe
	assign edge_detect = data & ~data_d;            
endmodule 
