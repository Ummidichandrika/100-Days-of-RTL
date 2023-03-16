class generator;
  
  transaction tr;
  mailbox #(transaction) mbx;
  mailbox #(transaction) mbxref;
  event sconext;
  event done;
  int count;
  
  
  function new( mailbox #(transaction) mbx,  mailbox #(transaction) mbxref);
   this.mbx = mbx;
   this.mbxref = mbxref; 
    tr = new(); 
  endfunction
  
  
  task run();
    repeat(count) begin
      for(int i = 0; i<10; i++) begin
        assert(tr.randomize) else $error("[GEN] : RANDOMIZATION FAILED");
        mbx.put(tr.copy);
        mbxref.put(tr.copy);
        tr.display("GEN");
        @(sconext);
      end
    end
    ->done;
  endtask
  
  
endclass
/////////
