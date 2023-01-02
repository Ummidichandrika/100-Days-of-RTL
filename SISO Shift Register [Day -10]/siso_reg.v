module siso_reg(clk,clear,si,so);

input clk,si,clear;

output reg so;



reg [3:0] tmp;

always @(posedge clk )

begin

if (clear)

tmp <= 4’b0000;

else

tmp <= tmp << 1;

tmp[0] <= si;

so = tmp[3];

end

endmodule
