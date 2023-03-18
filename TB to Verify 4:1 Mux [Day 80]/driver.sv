class driver;
virtual mux_if vif;
mailbox mbox;
transaction tr;
  function new(virtual mux_if vif, mailbox mbox);
tr=new();
this.vif = vif;
this.mbox = mbox;
endfunction

task run();
forever begin
mbox.get(tr);
vif.d=tr.d;
vif. sel=tr.sel;

# 5;
tr.y=vif.y;
  $display("Y=%b ", tr.y);
end
endtask
endclass
