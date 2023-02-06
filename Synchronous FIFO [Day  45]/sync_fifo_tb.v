`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:56:29 02/06/2023
// Design Name:   sync_fifo
// Module Name:   /home/ise/fifo/sync_fifo_tb.v
// Project Name:  sync_fifo
//Author Name: Ummidi Chandrika

////////////////////////////////////////////////////////////////////////////////

module sync_fifo_tb();
reg clk, rst, wr, rd ;
reg[7:0] data_in;
reg[7:0] tempdata;
wire [7:0] data_out;
wire [3:0] fifo_cnt;

sync_fifo fifo( .clk(clk), .rst(rst), .data_in(data_in), .data_out(data_out), 
         .wr(wr), .rd(rd), .empty(empty), 
         .full(full), .fifo_cnt(fifo_cnt) );

initial
begin
   clk = 0;
   rst = 1;
        rd = 0;
        wr = 0;
        tempdata = 0;
        data_in = 0;


        #15 rst = 0;
  
        push(1);
        fork
           push(2);
           pop(tempdata);
        join              //push and pop together   
        push(10);
        push(20);
        push(30);
        push(40);
        push(50);
        push(60);
        push(70);
        push(80);
        push(90);
        push(100);
        push(110);
        push(120);
        push(130);

        pop(tempdata);
        push(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
		  push(140);
        pop(tempdata);
        push(tempdata);//
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        push(5);
        pop(tempdata);
end

always
   #5 clk = ~clk;

task push;
input[7:0] data;


   if( full )
            $display("---Cannot push: FIFO Full---");
        else
        begin
           $display("Pushed ",data );
           data_in = data;
           wr= 1;
                @(posedge clk);
                #1 wr = 0;
        end

endtask

task pop;
output [7:0] data;

   if( empty )
            $display("---Cannot Pop: FIFO Empty---");
   else
        begin

     rd = 1;
          @(posedge clk);

          #1 rd = 0;
          data = data_out;
           $display("-------------------------------Poped ", data);

        end
endtask

endmodule

