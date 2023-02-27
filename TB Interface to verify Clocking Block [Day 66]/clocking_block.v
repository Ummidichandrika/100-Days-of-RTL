// Code your design here
module adder(add_if.RTL inf);
  
  always@(posedge inf.clk or posedge inf.reset) 
    begin 
    if(inf.reset) 
      begin 
      inf.out <= 0;
      inf.ack <= 0;
    end
    else if(inf.en)
      begin
      inf.out <= inf.a + inf.b;
      inf.ack <= 1;
    end
    else inf.ack <= 0;
  end
  
endmodule
