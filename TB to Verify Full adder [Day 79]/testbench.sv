//top.sv
`include "interface.sv"
`include "test.sv"

 module testbench;
 
 fa_intf pif();
 test tb(pif);
 
 FA f1(.in1(pif.in1),.in2(pif.in2),.sum(pif.sum),.cin(pif.cin),.cout(pif.cout));
 initial
 begin
 $dumpfile("dump.vcd");
 $dumpvars(1);
 
 end
 endmodule
 
 
