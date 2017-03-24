// Assignment 1 - Q1 - 1 (b)

module Q1b (A, B, O1, O2);

input A, B;
output O1, O2;

wire B_bar;

not not1(B_bar, B);

and and1(O1, A, B_bar);

not not2(O2, O1);

endmodule
