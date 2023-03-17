//test.sv
`include "environment.sv"

program test(fa_intf vif);
environment env;
  
initial begin
  env=new(vif);
  env.run();
end
  
endprogram
