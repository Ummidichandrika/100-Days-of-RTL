`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:38:56 01/12/2023 
// Design Name: 
// Module Name:    master_slave 
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
module jk_ff(j,k,clk,q,q_bar);
input j,k,clk;
output  q,q_bar;
reg q;
assign q_bar= ~q;
always @(posedge clk)
begin

case({j,k})
2'b00: q<=q;
2'b01: q<=0;
2'b10: q<=1;
2'b11: q<=~q;
endcase
end
endmodule


module master_slave(s,r,clk,qn,qn_bar,);
input s,r,clk;
output qn,qn_bar;


wire mq;
wire mq_bar;
wire mclk;
assign mclk= ~clk;


jk_ff Master(s,r,clk,mq,mq_bar);
jk_ff Slave(mq,mq_bar,mclk,qn,qn_bar);

endmodule
