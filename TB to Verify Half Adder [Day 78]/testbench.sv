//top.sv
`include "interface.sv"
`include "test.sv"

 module testbench;
 
 ha_if pif();
 test tb(pif);
 
   HA f1(.a(pif.a),.b(pif.b),.sum(pif.sum),.cout(pif.cout));
 initial
 begin
 $dumpfile("dump.vcd");
 $dumpvars(1);
 
 end
 endmodule
 
