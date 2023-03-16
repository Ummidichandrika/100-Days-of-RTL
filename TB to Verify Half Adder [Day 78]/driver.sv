class driver;
virtual ha_if vif;
mailbox mbox;
transaction tr;
  function new(virtual ha_if vif, mailbox mbox);
tr=new();
this.vif = vif;
this.mbox = mbox;
endfunction

task run();
forever begin
mbox.get(tr);
vif.a=tr.a;
vif. b=tr.b;
# 5;
tr. sum=vif. sum;
tr.cout=vif.cout;
$display("sum=%d cout=%d ", tr.sum, tr.cout);
end
endtask
endclass
