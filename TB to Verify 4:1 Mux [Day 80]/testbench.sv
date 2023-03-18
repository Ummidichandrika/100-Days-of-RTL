// Code your testbench here
// or browse Examples
// Code your testbench here
//top.sv
`include "interface.sv"
`include "test.sv"

 module testbench;
 
 mux_if pif();
 test tb(pif);
 
   mux m1(.d(pif.d),.sel(pif.sel),.y(pif.y));
 initial
 begin
 $dumpfile("dump.vcd");
 $dumpvars(1);
 
 end
 endmodule
