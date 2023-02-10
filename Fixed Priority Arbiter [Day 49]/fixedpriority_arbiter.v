`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date:    16:18:40 02/09/2023 
// Module Name:    fixedpoint_arbiter 
// Author  Name:  Ummidi Chandrika
////////////////////////////////////////////////////////////////
module fixedpriority_arbiter(output reg [3:0] GNT,
           input [3:0] REQ,
           input clk,reset 
);
always @(posedge clk or negedge reset)
// PRIORITY 3>1>0>2
    begin
    if(!reset)
    GNT<= 4'b0000;
    else if(REQ[3])
     GNT<= 4'b1000;
    else if(REQ[1])
     GNT<= 4'b0010;
    else if(REQ[0])
     GNT<= 4'b0001;
    else if(REQ[2])
     GNT<= 4'b0100;
     else 
     GNT<= 4'b0000;
    end
    
endmodule

