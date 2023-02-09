`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Create Date:   15:10:45 02/09/2023
// Design Name:   serial_adder
// Module Name:   /home/ise/serialadder/serial_adder_tb.v
// Project Name:  serialadder
//Author Name: Ummidi Chandrika
////////////////////////////////////////////////////////////////////////////////

module serial_adder_tb();

    // Inputs
    reg clk;
    reg reset;
    reg a;
    reg b;
    reg cin;

    // Outputs
    wire s;
    wire cout;

    // Instantiate the Unit Under Test (UUT)
    serial_adder uut (
        .clk(clk), 
        .reset(reset), 
        .a(a), 
        .b(b), 
        .cin(cin), 
        .s(s), 
        .cout(cout)
    );

//generate clock with 10 ns clock period.
    always
        #5 clk = ~clk;
        
    initial begin
        // Initialize Inputs
        clk = 1;
        reset = 0;
        a = 0;
        b = 0;
        cin = 0;
        reset = 1;  
        #20;
        reset = 0;
        //add two 4 bit numbers, 1111 + 1101 = 11101
        a = 1; b = 1; cin = 1;    #10;
        a = 1; b = 0; cin = 0;  #10;
        a = 1; b = 1; cin = 0;  #10;
        a = 1; b = 1; cin = 0;  #10;
        reset = 1;
        #10;
        reset = 0;
        //add two 5 bit numbers, 11011 + 10001 = 101101
        a = 1; b = 1; cin = 1;    #10;
        a = 1; b = 0; cin = 0;  #10;
        a = 0; b = 0; cin = 0;  #10;
        a = 1; b = 0; cin = 0;  #10;
        a = 1; b = 1; cin = 0;  #10;
        reset = 1;
        #10;

    end
	 
	 initial $monitor(" A=%b | B=%b | Cin=%b | Sum=%b | Cout=%b | Clock =%b",a,b,cin,s,cout,clk);
      
endmodule 


