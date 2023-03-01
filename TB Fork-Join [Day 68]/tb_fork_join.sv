// Code your testbench for fork-join
module tb;
	initial begin
      $display ("[%0t] Main Thread: Fork join will start", $time);
		fork
          print (20, "Thread1_0");
          print (30, "Thread1_1");
          print (10, "Thread2");              
        join
      $display ("[%0t] Main Thread: Fork join has finished", $time);
	end
  
  // Note that this task needs to be automatic
  task automatic print (int _time, string t_name);
    #(_time) $display ("[%0t] %s", $time, t_name);
  endtask
endmodule
