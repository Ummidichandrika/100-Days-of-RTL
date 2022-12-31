//test bench for the four-bit carry lookahead adder
module cla_4bit_tb;
reg [3:0] a, b; //inputs are reg for test bench
reg cin;
wire [3:0] sum; //outputs are wire for test bench
wire cout;
cla_4bit dut(a, b, cin, sum, cout);

//define input sequence
initial
begin
#0 a = 4'b0000; b = 4'b0000; cin = 1'b0;

#10 a = 4'b0001; b = 4'b0010; cin = 1'b0;

#10 a = 4'b0010; b = 4'b0110; cin = 1'b0;

#10 a = 4'b0111; b = 4'b0111; cin = 1'b0;
#10 a = 4'b1001; b = 4'b0110; cin = 1'b0;

#10 a = 4'b1100; b = 4'b1100; cin = 1'b0;

#10 a = 4'b1111; b = 4'b1110; cin = 1'b0;

#10 a = 4'b1110; b = 4'b1110; cin = 1'b1;
#10 a = 4'b1111; b = 4'b1111; cin = 1'b1;

#10 a = 4'b1010; b = 4'b1010; cin = 1'b1;

#10 a = 4'b1000; b = 4'b1000; cin = 1'b0;
#10 a = 4'b1101; b = 4'b1000; cin = 1'b1;
end
initial
begin
//display variables
$monitor("A=%b | B=%b | Cin=%b | Sum=%b | Carry=%b",a,b,cin,sum,cout);
#100 $finish;
end 
endmodule
