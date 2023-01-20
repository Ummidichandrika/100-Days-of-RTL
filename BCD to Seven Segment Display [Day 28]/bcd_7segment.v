`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    13:37:54 01/20/2023
// Design Name:
// Module Name:    binary_7segment
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
module Binary_7Segment
  (

   input [3:0] Binary_Num,
   output [6:0]     Segment

   );

  reg [6:0] Segment;
  always @(Binary_Num)
    begin
      case (Binary_Num)
            0 : Segment = 7'b1111110;
            1 : Segment = 7'b0110000;
            2 : Segment = 7'b1101101;
            3 : Segment = 7'b1111001;
            4 : Segment = 7'b0110011;
            5 : Segment = 7'b1011011;
            6 : Segment = 7'b1011111;
            7 : Segment = 7'b1110000;
            8 : Segment = 7'b1111111;
            9 : Segment = 7'b1111011;
            //switch off 7 segment character when the bcd digit is not a decimal number.
            default : Segment = 7'b000000;
      endcase
    end



endmodule // Binary_To_7Segment
