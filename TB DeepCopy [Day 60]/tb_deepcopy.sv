// Code your testbench here
// or browse Examples
class first;
  
 
  int data = 12;
  
  function first copy();
    copy = new();
    copy.data = data;
  endfunction
  
 
endclass
 
class second;
  
  int ds = 34;
  
  first f1;
  
  function new();
    f1 = new();
  endfunction
  
  function second copy();
    copy = new();
    copy.ds = ds;
    copy.f1 = this.f1.copy;    
  endfunction
  
 
  
endclass
 
 
module tb;
  
  second s1, s2;
  
  initial begin
    s1 = new();
    s2 = new();
    
     $display("--------------------------");
    $display("Before changing s1.ds");
    $display("Value of s1 ds : %0d", s1.ds);
    $display("--------------------------");
    
    s1.ds = 45;
    
    s2 = s1.copy();
     $display("--------------------------");
    $display("Value of s1 ds : %0d", s1.ds);
    $display("--------------------------");
    
    
    
    $display("--------------------------");
    $display("Value of s2 ds: %0d", s2.ds);
    $display("--------------------------");
    
    
    s2.ds = 78;
    $display("--------------------------");
    $display("After changing S2.ds");
    
    $display("Value of s1 ds: %0d", s1.ds);
    $display("--------------------------");
    
    $display("--------------------------");
    $display("Value of s2 ds: %0d", s2.ds);
    $display("--------------------------");
    
    s2.f1.data = 98;
    $display("--------------------------");
    $display("After changing S2.f1.data");
    $display("Value of s1 data : %0d", s1.f1.data);
    $display("--------------------------");
    
     
    $display("--------------------------");
    $display("Value of s2 data : %0d", s2.f1.data);
    $display("--------------------------");
  end
  endmodule
