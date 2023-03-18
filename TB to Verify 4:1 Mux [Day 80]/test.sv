//test.sv
`include "environment.sv"

program test(mux_if vif);
environment env;
  
initial begin
  env=new(vif);
  env.run();
end
  
endprogram
