// Code your testbench here
class parent_class;
  bit [31:0] addr=32'hff;
  function display ();
    $display ("[Parent] addr=0x%0h", addr);
	endfunction
endclass

class child_class extends parent_class;
  bit [31:0] data=32'h45;
 function display();
    super.display();       // Call base class display method
    $display ("[Child] addr=0x%0h", addr);
   $display ("[Child] data=%0h", data);
   
  endfunction
endclass

module inheritance;
  initial begin
 parent_class p;
    child_class c;
      p = new();
      c = new();
      c.display();
    end
endmodule 
