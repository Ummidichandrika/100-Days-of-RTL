module adder_subtractor (a, b, mode, result, ovfl);
input [7:0] a, b; //define inputs and outputs
input mode;
output [7:0] result;
output ovfl;
//variables rslt and ovfl are left-hand side targets
//in the always block and are declared as type reg
reg [7:0] result;
reg ovfl;
wire [7:0] a, b; //since inputs default to wire
wire mode; //the type wire is not required
//neg_b = ~b + 1 specifies an internal register
reg [7:0] neg_b ;
always @ (a or b or mode)
begin
if (mode == 0) //add
begin
result = a + b;
ovfl =(a[7] & b[7] & ~result[7]) |
(~a[7] & ~b[7] & result[7]);
end
else //subtract
begin
neg_b=~b+1;
result = a + neg_b;
ovfl =(a[7] & neg_b[7] & ~result[7]) |
(~a[7] & ~neg_b[7] & result[7]);
end
endmodule
