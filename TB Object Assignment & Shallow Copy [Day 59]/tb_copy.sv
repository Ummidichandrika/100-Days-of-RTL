// Code your testbench here
// Code your testbench here
// Object Assignment:same memory location will be allocated and which can be accessed by two different handles. If any handle would like to change class properties, it will reflect the same changes when it is accessed by another handle.
class transaction;
  bit [31:0] data;
  int start_Addr;
  int end_Addr;
endclass

//Class Declaration for Shallow Copy
class first;
  
  int data = 19;
  
endclass
 
class second;
  
  int ds = 12;
  
  first f1;
  
  function new();
    f1 = new();
  endfunction
  
  
endclass
 

module class_example;
  transaction tr1, tr2;
  second s1, s2;
  initial begin
    tr1 = new();
    tr1.data = 5;
    tr1.start_Addr=2033;
    tr1.end_Addr=3000;
    tr2 = tr1;
     $display("----------------------------------------");
    $display("-------------Object Assignment------------");
    $display("tr1.data = %0h, tr1.start_Addr=%d, tr1.end_Addr=%d", tr1.data,tr1.start_Addr,tr1.end_Addr);
     $display("----------------------------------------");
     $display("----------------------------------------");
    $display("tr2.data = %0h, tr2.start_Addr=%d, tr2.end_Addr=%d", tr2.data,tr2.start_Addr,tr2.end_Addr);
     $display("----------------------------------------");
    
    tr2.data = 10;
    tr2.start_Addr=2010;
     $display("----------------------------------------");
$display("tr1.data = %0h, tr1.start_Addr=%d, tr1.end_Addr=%d", tr1.data,tr1.start_Addr,tr1.end_Addr);
     $display("----------------------------------------");
     $display("----------------------------------------");
    $display("tr2.data = %0h, tr2.start_Addr=%d, tr2.end_Addr=%d", tr2.data,tr2.start_Addr,tr2.end_Addr);
     $display("----------------------------------------");
     
    s1 = new();
    
    s1.ds = 45;
    
    s2 = new s1;
    
    $display("----------------------------------------");
    $display("------------Shallow Copy----------------");
    $display("Value of s2.ds: %0d", s2.ds);
     $display("----------------------------------------");
    
    s2.ds = 78;
     $display("----------------------------------------");
    $display("After changing s2.ds");
    
    
    $display("Value of s1.ds: %0d", s1.ds);
     $display("----------------------------------------");
     $display("----------------------------------------");
    
    $display("Value of s2.ds: %0d", s2.ds);
     $display("----------------------------------------");
    
    s2.f1.data = 56;
     $display("----------------------------------------");
    $display("After changing s2.f1.data");
    
    $display("Value of data s1.f1.data: %0d", s1.f1.data);
     $display("----------------------------------------");
      $display("----------------------------------------");
    
    $display("Value of data s2.f2.data: %0d", s2.f1.data);
     $display("----------------------------------------");
    
  end
endmodule
