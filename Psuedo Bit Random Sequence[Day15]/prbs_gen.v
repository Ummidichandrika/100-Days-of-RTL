module prbs_gen (rand, clk, reset);
  //Inputs
input clk, reset;
  //output
output rand;
wire rand;
reg [3:0] temp;
always @ (posedge reset)
 begin
 temp <= 4'hf;
end
always @ (posedge clk) begin
 if (~reset) begin
 temp <= {temp[0]^temp[1],temp[3],temp[2],temp[1]};
 end
end
assign rand = temp[0];
endmodule 
