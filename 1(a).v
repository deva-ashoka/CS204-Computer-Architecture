// Assignment 1 - Q1 - 1 (a)

module Q1a (A, B, O1, O2);

input A,B;
output O1, O2;

and and1(O2, A, B);
not not1(O1, O2);

endmodule
