// Code your design here
module FA(in1, in2, cin, sum, cout);
input in1, in2, cin;
output sum, cout;
assign sum =inl^in2^cin;
assign  cout=(in1&in2) | (in2&cin) | (in1 &cin);
endmodule
