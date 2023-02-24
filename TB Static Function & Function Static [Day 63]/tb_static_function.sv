// Code your testbench here
// or browse Examples
class a;
  int b_var;
  static int x_var;
  // doesnot initialize a_var every object, but maintains a different 
  // copy of b_var for every object
  //
  function static display();
    int a_var;
    a_var++;
    $display("a_var = %0d",a_var);
	b_var++;
    $display("b_var = %0d",b_var);

  endfunction: display
  
   static function method();
    int y_var;
    y_var++;
     $display("y_var = %0d",y_var);
    x_var++;
     $display("x_var = %0d",x_var);
  endfunction: method
  
endclass

module m1();
  int i;
  initial
    begin
      a a_obj;
      a b_obj;
      a a_var;
      a b_var;
      a_obj = new();
      b_obj = new();
      a_var=new();
      b_var=new();
      
      $display("---------------------------");
      $display("Function Static");
      $display("For a_obj : ");
       $display("---------------------------");
      for(i=0;i<5;i++)
        begin
          a_obj.display();
        end
      
       $display("---------------------------");
      $display("For b_obj : ");
       $display("---------------------------");
      for(i=0;i<5;i++)
        begin
          b_obj.display();
        end
      
       $display("---------------------------");
      $display(" Static Function");
      $display("For a_var : ");
       $display("---------------------------");
      for(i=0;i<5;i++)
        begin
          a_var.method();
        end
      
       $display("---------------------------");
      $display("For b_var : ");
       $display("---------------------------");
      for(i=0;i<5;i++)
        begin
          b_var.method();
        end
      
      
      
    end
endmodule:m1
