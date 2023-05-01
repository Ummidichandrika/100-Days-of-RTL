//TB Constraint to generate a pattern 0102030405 
  
  // Code your testbench here
module tb;

class abc;
  rand int a[];
  constraint size{a.size==10;}
  constraint mirr{foreach(a[i])
    if(i%2==0)
      a[i]==0;
                  else
                    a[i] == (i+1)/2;}
endclass

abc m_h=new();
initial begin
  assert(m_h.randomize());
  $display("%p",m_h);
end
endmodule
