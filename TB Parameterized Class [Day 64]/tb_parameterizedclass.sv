// Code your testbench here
class size_parameterized #(int size = 8);
	bit [size-1:0] out;
endclass

class type_parameterized #(type T = int);
  T item;             
	
  function T add_a (T a); 	
    return item + a;
  endfunction
endclass

module tb;
  
  // Override default value of 8 with the given values in #()
size_parameterized  #(16) p1;    // pass 16 as "size" to this class object
size_parameterized  #(.size (8)) p2; // pass 8 as "size" to this class object
type_parameterized  	t1; 	// t1.item is by default of int type
type_parameterized #(bit[3:0]) t2;// t2.item will become a 4-bit vector
type_parameterized #(real) t3; // t3.item will become a real number
  


 initial begin
    //  Instantiate class objects
    p1 = new;
    p2 = new;
   t1=new;
   t2=new;
   t3=new;
  
    
    //  Print size of "out" variable. $bits() system task will return
    // the number of bits in a given variable
    $display ("p1.out   = %0d bits", $bits(p1.out));
    $display ("p2.out   = %0d bits", $bits(p2.out));
   
   
   // Assign different values, and add 10 to these values
      // Then print the result - Note the different values printed
      // that are affected by change in data type
      t1.item = -456;
   $display ("t1.item = %0d", t1.add_a (10));
      
      t2.item = 8'hA1;
   $display ("t2.item = %0d", t2.add_a (10));
      
      t3.item = 3.14;
   $display ("t3.item = %0.2f", t3.add_a (10));
  end
endmodule
