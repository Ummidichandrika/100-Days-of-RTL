`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:48:30 02/06/2023 
// Design Name:  Synchronous FIFO
// Module Name:    sync_fifo 
// Author Name: Ummidi Chandrika
//////////////////////////////////////////////////////////////////////////////////

module sync_fifo (input [7:0] data_in, input clk, rst, rd, wr,
output empty, full, output reg [3:0]fifo_cnt,
output reg [7:0] data_out);


reg [7:0] fifo_ram [0:7];
reg [2:0] rd_ptr, wr_ptr;
assign empty= (fifo_cnt==0);
assign full =(fifo_cnt==8);
always @(posedge clk) begin: write
if (wr && ! full)
fifo_ram [wr_ptr] <= data_in;
else if (wr && rd)
fifo_ram [wr_ptr] <= data_in;
end

//Read and Write Clock
always @ (posedge clk) begin: read
if (rd && !empty)
data_out <= fifo_ram [rd_ptr];
else if (rd && wr)
data_out <= fifo_ram [rd_ptr];
end



//pointer block
always @(posedge clk) begin: pointer
if (rst) begin
wr_ptr <= 0;
rd_ptr <= 0;
end 
else begin
wr_ptr <= ((wr && ! full) || (wr && rd)) ? wr_ptr+1 :
wr_ptr;
rd_ptr <= ((rd && !empty) || (wr && rd)) ? rd_ptr+1:
rd_ptr;
end
end

//counter
always @(posedge clk) begin: count
if (rst) fifo_cnt <= 0;
else begin
case ({wr, rd})
2'b00: fifo_cnt <= fifo_cnt;
2'b01: fifo_cnt <= (fifo_cnt==0) ? 0: fifo_cnt-1;
2'b10: fifo_cnt <= (fifo_cnt==8) ? 8: fifo_cnt+1;
2'b11 : fifo_cnt <= fifo_cnt;
default: fifo_cnt <= fifo_cnt;
endcase
end
end
endmodule
