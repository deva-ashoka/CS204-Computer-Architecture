//Subtractor -created by Deva

module FullSubtractor (diffFinal, carry, borrow, input1, input2);

input input1, input2, carry;
output diffFinal, borrow;

xor xor1(diffInitial, input1, input2);
xor xor2(diffFinal, diffInitial, carry);
not not1(not1Output, diffInitial);
and and1(and1Output, not1Ouput, carry);

not not2(not2Output, input1);
and and2(and2Output, not2Output, input2);

or or1(borrow, and2Output, and1Output);

endmodule
