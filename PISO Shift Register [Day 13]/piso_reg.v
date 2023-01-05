`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:09:10 01/04/2023 
// Design Name: 
// Module Name:    piso_Reg 
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
module s1(a, b, sl ,q);
    input a,b,sl;
    output q;
    assign q=(~sl&b)|(sl&a);
endmodule
module dff(d,clk,q);
    input d,clk;
    output q;
    reg q=0;
    always @ (posedge clk)
    begin
    q<=d;
    end
endmodule

module piso_reg(d, clk, sl, q);
    input [3:0]d;
input clk,sl;
    output q;
    wire q1,q2,q3,d1,d2,d3;
    dff a(d[3],clk,q1);
    s1 a1(q1,d[2],sl,d1);
    dff b(d1,clk,q2);
    s1 b1(q2,d[1],sl,d2);
    dff c(d2,clk,q3);
    s1 c1(q3,d[0],sl,d3);
    dff dd(d3,clk,q);
endmodule 
