// Code your testbench here
module factorial();
  class eve;
    rand int a;
     real re_num;
    
    constraint a1 { a inside {[990:1000]};}
    function void post_randomize();
      re_num = a/10.0;
      $display(" the rela num %2f", re_num);
    endfunction 
    endclass
   initial 
    begin
      eve p1=new;
      repeat(5) 
        begin
       assert(p1.randomize());
          $display(" %p ", p1.a);
        end 
    end
endmodule



