class hello;
  function new();
  endfunction
  
  function void print_hello();
    $display("Hello World!\n");
  endfunction
  
endclass

module hello_tb();
  hello h1;
  
  initial begin
    h1=new();
    h1.print_hello();
    $finish();
  end
  
endmodule
