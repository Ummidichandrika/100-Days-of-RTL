`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:46:05 01/01/2023 
// Design Name: 
// Module Name:    comparator_nbit 
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
module comparator_nbit(a,b,Lesser,Greater,Equal);
parameter n=32;
input [n-1:0]a,b;
output Lesser,Greater,Equal;
reg Lesser=0,Greater=0,Equal=0;
always @ (a,b)
begin
if(a>b)
begin
Lesser=0;Equal=0;Greater=1;
end
else if (a<b)
begin
Lesser=1;Equal=0;Greater=0;
end
else
begin
Lesser=0;Equal=1;Greater=0;
end
end
endmodule
