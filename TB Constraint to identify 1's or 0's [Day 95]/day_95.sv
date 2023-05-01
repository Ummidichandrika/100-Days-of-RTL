class test;
  rand bit [7:0] value;
  bit [3:0] num,count;
endclass
  module abc;
  test t = new;

  initial begin
    
   repeat(5)
      begin
        t.randomize();
        foreach(t.value[i])
          if(!t.value[i])  
            t.count=t.count+1;
        $display("value : %b,\t number of zeros : %d", t.value, t.count);
        t.count=0;
      end
    $display("------another way---------");
    repeat(5)
      begin
        t.randomize();
        t.num = $countones(t.value);
        t.count = $size(t.value) - t.num; //size of array
        $display("value : %b,\t number of zeros : %d", t.value, t.count);
      end
    end
endmodule

