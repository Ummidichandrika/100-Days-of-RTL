//Testbench Code

interface xor4_if;
  logic [3:0] a;
  logic [3:0] b;
  logic [3:0] y;
endinterface
 
 module tb;
  xor4_if xif();
  xor4 dut (.a(xif.a), .b(xif.b), .y(xif.y));
  initial begin
    xif.a = 4'b0100;
    xif.b = 4'b1100;  #10;
     xif.a = 4'b1001;
    xif.b = 4'b1000; #10;
     xif.a = 4'b0101;
    xif.b = 4'b1010; 
  end
initial  $monitor("a : %b , b : %b and y : %b",xif.a, xif.b, xif.y );
   initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
