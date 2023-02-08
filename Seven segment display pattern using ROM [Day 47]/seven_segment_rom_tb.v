// Functionality:
 // retrieve data from ROM and display on seven-segment device and LEDs
 // ports:
// SW : address in binary format
 // HEX0 : display data on seven segment device
 // LEDR : display data on LEDs
module ROM_sevenSegment_Test
 ();
 reg [3:0] SW;
 wire [6:0] HEX0;
 wire [6:0] LEDR;


integer i;
 // signal to store received data, so that it can be displayed on
 // two devices i.e. seven segment display and LEDs
 wire [6:0] data;

 ROM_sevenSegment seven_segment_ROM(
 .addr(SW), .data(data)
 );
 
 initial begin
 for(i=0;i<16;i=i+1)
 begin
 SW=i;
 #10;
 end

 end

assign HEX0 = data; // display on seven segment devices
 assign LEDR = data; // display on LEDs

 endmodule
