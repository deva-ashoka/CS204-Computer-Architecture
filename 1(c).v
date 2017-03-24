// Assignment 1 - Q1 - 1 (c)

module Q1c (A, B, O1, O2);

input A, B;
output O1, O2;
wire A_bar, B_bar, and1Output, and2Output, or1Output;

not not1(A_bar, A);
not not2(B_bar, B);

and and1(and1Output, A, B_bar);
and and2(and2Output, A, B);
or or1(or1Output, and1Output, and2Output);

or or2(O1, or1Output, A_bar);
not not3(O2, A);

endmodule
