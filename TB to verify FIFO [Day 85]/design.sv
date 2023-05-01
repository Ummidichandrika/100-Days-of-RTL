// Code your design here
// Code your design here
module fifo( 
  input clock, rd, wr,
  output full, empty,
  input [7:0] data_in,
  output reg [7:0] data_out,
  input rst);
 
 
  reg [7:0] mem [31:0];
  reg [4:0] wr_ptr;
  reg [4:0] rd_ptr; 
 
 
 
always@(posedge clock)
  begin
    if (rst == 1'b1)
      begin
        data_out <= 0;
        rd_ptr <= 0;
        wr_ptr <= 0;
        for(int i =0; i < 32; i++) begin
          mem[i] <= 0;
        end
      end
    else
      begin
        if ((wr == 1'b1)  && (full == 1'b0))
          begin
          mem[wr_ptr] <= data_in;
          wr_ptr = wr_ptr + 1;
          end
        
        if((rd == 1'b1) && (empty == 1'b0))
          begin
          data_out <= mem[rd_ptr];
          rd_ptr <= rd_ptr + 1;
          end
      end
end
  
  
assign empty = ((wr_ptr - rd_ptr) == 0) ? 1'b1 : 1'b0; 
  
assign full = ((wr_ptr - rd_ptr) == 31) ? 1'b1 : 1'b0; 
  
  
endmodule

interface fifo_if;
  
  logic clock, rd, wr;
  logic full, empty;
  logic [7:0] data_in;
  logic [7:0] data_out;
  logic rst;
 
endinterface
