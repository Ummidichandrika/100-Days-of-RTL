// Code your testbench here
//top.sv
`include "interface.sv"
`include "test.sv"

 module testbench;
 
 dec_if pif();
 test tb(pif);
 
   dec_beh d1(.d(pif.d),.o(pif.o));
 initial
 begin
 $dumpfile("dump.vcd");
 $dumpvars(1);
 
 end
 endmodule
 
 
