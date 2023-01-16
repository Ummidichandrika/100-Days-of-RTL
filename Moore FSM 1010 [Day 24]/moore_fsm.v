`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:02:59 01/16/2023 
// Design Name: 
// Module Name:    moore_fsm 
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
module moore_fsm(din, reset, clk, y);
input din;
input clk;
input reset;
output reg y;
reg [2:0] cst, nst;
localparam S0 = 3'b000,
          S1 = 3'b001,
          S2 = 3'b010,
          S3 = 3'b100,
            S4 = 3'b101;
always @(cst or din)
 begin
 case (cst)
   S0: if (din == 1'b1)
          begin
         nst = S1;
          y=1'b0;
          end
      else nst = cst;
   S1: if (din == 1'b0)
          begin
        nst = S2;
          y=1'b0;
          end
       else
          begin
          nst = cst;
          y=1'b0;
          end
   S2: if (din == 1'b1)
          begin
         nst = S3;
          y=1'b0;
          end    
            else
          begin
          nst = S0;
          y=1'b0;
          end
   S3: if (din == 1'b0)
          begin
         nst = S4;
          y=1'b0;
          end
       else
          begin
          nst = S1;
          y=1'b0;
          end
S4: if (din == 1'b0)
          begin
         nst = S1;
          y=1'b1;
          end
          else
          begin
          nst = S3;
          y=1'b1;
          end
   default: nst = S0;
  endcase
end
always@(posedge clk)
begin
          if (reset)
          cst <= S0;
          else
            cst <= nst;
end
endmodule
