module prbs_gen_tb();
reg clk, reset;
wire rand;
prbs_gen pr (rand, clk, reset);
initial begin
 forever begin
 clk <= 0;
 #5
 clk <= 1;
 #5
 clk <= 0;
 end
end
initial begin
 reset = 1;
 #12
 reset = 0;
 #90
 reset = 1;
 #12
 reset = 0;
end
initial 
begin
$monitor(" Random bit : %b | Reset=%b | Clock=%b", rand,reset,clk);
#1000 $finish;
end
endmodule
