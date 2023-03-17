class driver;
virtual fa_intf vif;
mailbox mbox;
transaction tr;
function new(virtual fa_intf vif, mailbox mbox);
tr=new();
this.vif = vif;
this.mbox = mbox;
endfunction

task run();
forever begin
mbox.get(tr);
vif.in1=tr.in1;
vif. in2=tr.in2;
vif.cin=tr.cin;
# 5;
tr. sum=vif. sum;
tr.cout=vif.cout;
$display("sum=%d cout=%d ", tr.sum, tr.cout);
end
endtask
endclass
