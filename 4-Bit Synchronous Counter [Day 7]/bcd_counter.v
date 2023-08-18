module bcd_counter(input clock, clear,
           output reg [3:0] count);
reg [3:0] t;
always @ (posedge clock) begin
  if (clear) 
  begin
    t <= 4'b0000;
    count <= 4'b0000;
  end
  else 
  begin
    t <= t + 1;
    if (t == 4'b1001) 
    begin
      t <= 4'b0000;
    end
    count <= t;
  end
end
endmodule


