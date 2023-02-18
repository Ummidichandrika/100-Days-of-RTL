module function_tb;
  int x,y,z;
  int p,q,r;
  int d;
  int g,h;
  
  //function using argument pass by value.
  function int sum_value(int x,y);
    x = x+y;
    return x+y;   
  endfunction
  
   //function using pass by reference.
  function automatic int sum_ref(ref int p,q);
    p = p+q;
    return p+q;   
  endfunction
  
 //function using default arguments.
  function int sum_default(int a=5, b=10,c=20);
    return a+b+c;   
  endfunction
  
  //function using argument pass by name
  function void display(int g,string h);
      $display("-----------------------------------------------------------------");
     $display("Function using argument pass by Name");
     $display("\tValue of x = %0d, y = %0s",g,h);   
  endfunction

  initial begin
    x = 20;
    y = 30;
    p=20;
    q=30;
    d=sum_default( , , 10);
    
    z = sum_value(x,y);
    r=sum_ref(p,q);
    display(.h("Hello World"),.g(2023));

    $display("-----------------------------------------------------------------");
    $display("Function using argument pass by value");
    $display("\tValue of x = %0d",x);
    $display("\tValue of y = %0d",y);
    $display("\tValue of z = %0d",z);
    $display("-----------------------------------------------------------------");
     $display("-----------------------------------------------------------------");
    $display("Function using argument pass by Reference");
    $display("\tValue of p = %0d",p);
    $display("\tValue of q = %0d",q);
    $display("\tValue of r = %0d",r);
    $display("-----------------------------------------------------------------");
     $display("-----------------------------------------------------------------");
    $display("Function using default arguments");
    
    $display("\tValue of d = %0d",d);
   
    $display("-----------------------------------------------------------------");
    
  end
endmodule
