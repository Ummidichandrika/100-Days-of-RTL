class driver;
virtual fs_if vif;
mailbox mbox;
transaction tr;
  function new(virtual fs_if vif, mailbox mbox);
tr=new();
this.vif = vif;
this.mbox = mbox;
endfunction

task run();
forever begin
mbox.get(tr);
vif.a=tr.a;
vif. b=tr.b;
vif.bin=tr.bin;
# 5;
tr. diff=vif. diff;
tr.bout=vif.bout;
  $display("diff=%d bout=%d ", tr.diff, tr.bout);
end
endtask
endclass
