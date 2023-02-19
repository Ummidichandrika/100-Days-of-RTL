// Code your testbench for task in system verilog
module task_example;
  int a, b;
  int out;
    
  task tk_add(int a, b, output int out);
    a = a+b; //value of a is updated, it won't update global variables a and b
    out = a;
  endtask
  
  task automatic tk_add1( ref int a, b, output int out);
    a = a+b; // expects compilation error when subroutine tries to modify argument value.
    out = a;
  endtask
  
  task static tk_add2 (int a, b, output int out );
    a = a+b;
    out = a;
  endtask
  
  initial begin
    a = 5;
    b = 6;
    tk_add(a,b, out);
    $display("out = %0d  a = %0d  b = %0d", out, a, b);//out = 11  a = 5  b = 6
    tk_add1(a,b, out);
    $display("out = %0d  a = %0d  b = %0d", out, a, b);//out = 11  a = 11  b = 6
    tk_add2(a,b, out);
    $display("out = %0d  a = %0d  b = %0d", out, a, b);//out = 17  a = 11  b = 6
  end
  endmodule
