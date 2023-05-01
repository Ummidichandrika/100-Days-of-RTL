class driver;
virtual dec_if vif;
mailbox mbox;
transaction tr;
  function new(virtual dec_if vif, mailbox mbox);
tr=new();
this.vif = vif;
this.mbox = mbox;
endfunction

task run();
forever begin
mbox.get(tr);
vif.d=tr.d;

# 5;
tr.o=vif.o;

  $display("Output = %b ", tr.o);
end
endtask
endclass
