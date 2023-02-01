`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:04:20 02/01/2023 
// Module Name:    gcd_beh 
// Project Name:  Greatest Common Divisor Using Behavioural Modelling
//Author Name: Ummidi Chandrika

//////////////////////////////////////////////////////////////////////////////////
module gcd_beh#( parameter W = 7)
(
input [W-1:0] A, B,
output  [W-1:0] GCD
);
reg [W-1:0] Ain, Bin, GCD;
always @(*)
begin
Ain = A; Bin = B;
while( Ain != Bin)
begin
if ( Ain < Bin )
Bin = Bin-Ain;
else
Ain = Ain - Bin;
end
GCD = Ain;
end
endmodule 
