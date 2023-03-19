//test.sv
`include "environment.sv"

program test(fs_if vif);
environment env;
  
initial begin
  env=new(vif);
  env.run();
end
  
endprogram
