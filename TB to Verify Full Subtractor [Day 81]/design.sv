// Code your design here
// Code your design here
module FS(a, b, bin, diff, bout);
input a,b, bin;
output diff, bout;
assign diff =a^b ^ bin;
  assign  bout=(~a& bin) | (~a& b) | (b &bin);
endmodule
