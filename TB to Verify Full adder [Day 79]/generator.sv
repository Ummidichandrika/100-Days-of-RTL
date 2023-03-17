class generator;
//instating this transaction
transaction tr;
mailbox mbox;
function new(mailbox mbox);
this.mbox= mbox;
endfunction
task run();
  repeat(3) begin
tr=new();
tr.randomize();
//tr.in1=1;
//tr.in2=1;
//tr.cin=0;
    $display("in1=%d in2=%d cin=%d", tr.in1, tr.in2, tr.cin);
mbox.put(tr);
end
endtask
endclass
