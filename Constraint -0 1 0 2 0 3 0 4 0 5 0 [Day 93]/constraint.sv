// Code your testbench here
module even();
  class eve;
    rand bit[7:0] a[];
 
    
    constraint a1 { a.size inside {[7:10]};}
   
    constraint a3 {foreach(a[i]ac)  if ( i%2 ==0) a[i] ==0; else a[i] == (i+1)/2;}
    
  endclass
  
  initial 
    begin
      eve p1=new;
      repeat(5)
        begin 
       assert(p1.randomize());
        foreach(p1.a[i])
        $display( " [%0d]  %0d  " ,i , p1.a[i]);
          $display(" %p %0d ", p1,p1.a.sum());
    end
    end
endmodule
