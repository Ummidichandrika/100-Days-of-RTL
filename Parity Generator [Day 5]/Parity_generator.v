`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Ummidi Chandrika
// 
// Create Date:    15:22:24 12/28/2022 
// Design Name: 
// Module Name:    parity_generator 
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
`timescale 1ns / 1ps

module par_gen(x,y,z,result);
input x,y,z;
output result;
xor (result,x,y,z);  
endmodule 
