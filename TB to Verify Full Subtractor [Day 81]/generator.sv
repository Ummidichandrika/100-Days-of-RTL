class generator;
//instating this transaction
transaction tr;
mailbox mbox;
function new(mailbox mbox);
this.mbox= mbox;
endfunction
task run();
  repeat(15) begin
tr=new();
tr.randomize();

    $display("a=%d b=%d bin=%d", tr.a, tr.b, tr.bin);
mbox.put(tr);
end
endtask
endclass
