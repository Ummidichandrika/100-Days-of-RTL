// Code your testbench here
// or browse Examples
//top.sv
`include "interface.sv"
`include "test.sv"

 module testbench;
 
 fs_if pif();
 test tb(pif);
 
   FS f1(.a(pif.a),.b(pif.b),.diff(pif.diff),.bin(pif.bin),.bout(pif.bout));
 initial
 begin
 $dumpfile("dump.vcd");
 $dumpvars(1);
 
 end
 endmodule
 
 
