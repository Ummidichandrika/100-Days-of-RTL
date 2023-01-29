`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:05:50 01/30/2023 
// Design Name: 
// Module Name:    cn_ff 
// Project Name: C-N flip-flop using D flip flop and 2 x 1 multiplexer.
// Author Name: Ummidi Chandrika
//////////////////////////////////////////////////////////////////////////////////
module mux2X1(a,b,s,y);
input a,b,s;
output reg y;

always @(a or b or s)
begin
case(s)
0: y=a;
1:y=b;
default: y=1'b0;
endcase
end
endmodule



module d_ff(d,clk,reset,q);
input d,clk,reset;
output reg q;

always @(posedge clk)
begin
if(reset)
q=0;
else 
q=d;
end

endmodule


module cn_flipflop(c,n,clk,q,qbar);
input c,n,clk;
output q,qbar;
wire cn,n_bar,d_wire;

mux2X1 mux1(1'b0,c,n,cn);
mux2X1 mux2(1'b1,1'b0,n,n_bar);
mux2X1 mux3(cn,n_bar,q,d_wire);
d_ff dff1( .d(d_wire),.clk(clk),.reset(),.q(q));
assign qbar=~q;

endmodule          
