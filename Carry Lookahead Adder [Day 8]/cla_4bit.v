//structural for four-bit carry lookahead adder using
//built-in primitives and conditional assignment
module cla_4bit (a, b, cin, sum, cout);
input [3:0] a, b; //define inputs and outputs
input cin;
output [3:0] sum;
output cout;
//design the logic for the generate functions
and (g0, a[0], b[0]),
(g1, a[1], b[1]),
(g2, a[2], b[2]),
(g3, a[3], b[3]);
//design the logic for the propagate functions
xor (p0, a[0], b[0]),
(p1, a[1], b[1]),
(p2, a[2], b[2]),
(p3, a[3], b[3]);
//design the logic for the sum equations
xor (sum[0], p0, cin),
(sum[1], p1, c0),
(sum[2], p2, c1),
(sum[3], p3, c2);//design the logic for the carry equations
//using the continuous assign statement
assign c0 = g0 | (p0 & cin),
c1 = g1 | (p1 & g0) | (p1 & p0 & cin),
c2 = g2 | (p2 & g1) | (p2 & p1 & g0)
 | (p2 & p1 & p0 & cin),
c3 = g3 | (p3 & g2) | (p3 & p2 & g1)
 | (p3 & p2 & p1 & g0)
 |(p3 & p2 & p1 & p0 & cin);
//design the logic for cout using assign
assign cout = c3;
endmodule
