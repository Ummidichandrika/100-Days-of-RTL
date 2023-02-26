// Code your testbench for Randomization

class packet;
  
  rand bit [3:0] addr1;
  randc bit [3:0] addr2;  
  
  function void post_randomize;
    $display(" addr1 is %b ", addr1 );
    $display(" addr2 is %b ", addr2 );
  endfunction
  
endclass

packet pkt = new();

module rand_methods;
  
  initial begin
    repeat(10) begin
      assert(pkt.randomize())else 
        begin
                $display("Randomization Failed at %0t", $time); 
                $finish();
        end
      
      $display("Value of addr1 :%0d and addr2: %0d", pkt.addr1,pkt.addr2);
    end      
    end
  
  initial begin
    int pr;
    if(pkt.addr1.rand_mode())
      begin
        for(int i = 0;i<4;i++)
    pr = pkt.randomize();   
  end  
  end
  
endmodule 
