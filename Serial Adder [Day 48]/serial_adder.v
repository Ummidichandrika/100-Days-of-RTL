`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date:    15:05:09 02/09/2023  
// Module Name:    serial_adder 
//Author Name: Ummidi Chandrika
//////////////////////////////////////////////////////////////////////////////////
module serial_adder 
    (   input clk,reset,  //clock and reset
        input a,b,cin,  //note that cin is used for only first iteration.
        output reg s,cout  //note that s comes out at every clock cycle and cout is valid only for last clock cycle.
        );

reg c,flag;

always@(posedge clk or posedge reset)
begin
    if(reset == 1) begin //active high reset
        s = 0;
        cout = c;
        flag = 0;
    end else begin
        if(flag == 0) begin
            c = cin;  //on first iteration after reset, assign cin to c.
            flag = 1;  //then make flag 1, so that this if statement isnt executed any more.
        end 
        cout = 0;
        s = a ^ b ^ c;  //SUM
        c = (a & b) | (c & b) | (a & c);  //CARRY
    end 
end

endmodule 
