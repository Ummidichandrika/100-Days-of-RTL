class generator;
transaction tr;
mailbox mbox;
function new(mailbox mbox);
this.mbox= mbox;
endfunction
task run();
  repeat(20) begin
tr=new();
tr.randomize();

    $display("D=%b Sel=%b", tr.d, tr.sel);
mbox.put(tr);
end
endtask
endclass
