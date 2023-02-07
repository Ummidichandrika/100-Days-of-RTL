`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Create Date:   15:33:42 02/07/2023
// Design Name:   pri_en
// Module Name:   /home/ise/priority_encoder/pri_en_tb.v
// Project Name:  priority_encoder
//Author Name: Ummidi Chandrika
// Verilog Test Fixture created by ISE for module: pri_en_tb
////////////////////////////////////////////////////////////////////////////////
module pri_en_tb();
reg [7:0] d;
reg en;
wire [2:0] y;

pri_en dut(d,y,en);

initial
begin
en=1'b1;  
d=8'b00000001; #10;
d=8'b00000011; #10;
d=8'b00000101; #10;
d=8'b00001001; #10;
d=8'b00010001; #10;
d=8'b00110001; #10;
d=8'b01110001; #10;
d=8'b11001001; #10;

#10 d=8'b10111001;
#10 d=8'b00101010;
#10 d=8'b00000001;


#10 d=8'b10100010;

end




initial
$monitor("Input %8b |  Output %3b |  Enable %b ",d,y,en);
 
 initial #100 $finish;
 
 endmodule
 


