// Code your design for decoder
module dec_beh(d,o);
input  [2:0] d;
output  reg [7:0] o;
always @(d)
begin
case(d)
3'b000: o= 8'b00000001;
3'b001: o= 8'b00000010;
3'b010: o= 8'b00000100;
3'b011: o= 8'b00001000;
3'b100: o= 8'b00010000;
3'b101: o= 8'b00100000;
3'b110: o= 8'b01000000;
3'b111: o= 8'b10000000;
default: o=8'b00000000;
endcase
end
endmodule


