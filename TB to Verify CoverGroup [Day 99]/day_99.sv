// Code your testbench here
module tb;
  
  // Declare some variables that can be "sampled" in the covergroup
  bit [1:0] mode;
  bit [2:0] vari;
  
  // Declare a clock to act as an event that can be used to sample
  // coverage points within the covergroup
  bit clk;
  always #20 clk = ~clk;
  
  // "cg" is a covergroup that is sampled at every posedge clk
  covergroup cg @ (posedge clk);
    coverpoint mode;
  endgroup
  
  // Create an instance of the covergroup
  cg  cg_inst;
  
  initial begin
    // Instantiate the covergroup object similar to a class object
    cg_inst= new();
     for (int i = 0; i < 5; i++) begin
      @(negedge clk);
      mode = $random;
     vari  = $random;
       $display ("[%0t] mode=%0h vari=%0h", $time, mode, vari);
    end
  end
  
  // At the end of 500ns, terminate test and print collected coverage
  initial begin
    #500 $display ("Coverage = %0.2f %%", cg_inst.get_inst_coverage());
    $finish;
  end
endmodule
