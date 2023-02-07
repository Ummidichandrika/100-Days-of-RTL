`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:32:15 02/07/2023 
// Design Name:  Priority Encoder
// Module Name:    pri_en 
// Author Name: Ummidi Chandrika

 //////////////////////////////////////////////////////////////////////////////////
module pri_en(d,y,en);
input [7:0] d;
input en;
output  [2:0] y;
reg [2:0] y;
always @(d or en )
begin
if(en)
begin
casex(d)

8'b00000001:y=3'b000;
8'b0000001x:y=3'b001;
8'b000001xx:y=3'b010;
8'b00001xxx:y=3'b011;
8'b0001xxxx:y=3'b100;
8'b001xxxxx:y=3'b101;
8'b01xxxxxx:y=3'b110;
8'b1xxxxxxx:y=3'b111;
endcase
end
else
begin
y=3'bxxx;
end
end

endmodule


