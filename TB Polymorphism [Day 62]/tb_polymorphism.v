//code your testbench for polymorphism

class parent; // parent class 
  
  int data = 60;
  int id = 471;  
  
  virtual function void display();
    $display("Parent: Value of data = %0d, id = %0d", data, id);
  endfunction
  
endclass


class child_A extends parent; //child class 1  
  
  function void display();
    $display("Child_A: Value of data = %0d, id = %0d", data, id);
  endfunction
  
endclass

class child_B extends parent; //child class 2
  
  function void display();
    $display("Child_B: Value of data = %0d, id = %0d", data, id);
  endfunction
  
endclass


module tb;
  
  parent p_A, p_B;
  child_A c_A; 
  child_B c_B; 
  
  initial
    begin
      
     p_A = new();
     p_B = new();
     c_A = new();
     c_B = new(); 
      
      p_A.display(); //display parent class 
     p_B.display();
      
     c_A.data = 200;
     c_A.id   = 2; 
      
     c_B.data = 300;
     c_B.id   = 3; 
      
     p_A = c_A;
     p_B = c_B; 
      
     p_A.display();  //display parent class after assigning child class to parent class
     p_B.display();  
      
     p_A.data = 100;
     p_A.id   = 1;   
      
     p_A.display();    
  end
endmodule
