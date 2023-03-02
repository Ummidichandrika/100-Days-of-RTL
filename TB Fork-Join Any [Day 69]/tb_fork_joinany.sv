module fork_join_any ();
  initial begin
    fork
      // T0
      begin
        print(0, "Started..");
        #15;
        print(0, "Finished");
      end
      // T1
      begin
        print(1, "Started..");
        #30;
        print(1, "Finished");
      end
      // T2
      begin
        print(2, "Started..");
        #10;
        print(2, "Finished");
      end
    join_any
    $display("After fork join_any");
  end
  
  initial begin
    // Wait for some time before calling $finish
    #40;
    $finish();
  end
  
  function automatic void print(int thread_num, string msg);
    $display("%t T%1d - %s", $time, thread_num, msg);
  endfunction
  
endmodule
