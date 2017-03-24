//32-bit Subtractor: Created by Deva

module subtractor32Bit(diff, input1, input2);

parameter N = 32;

input [N-1:0] input1, input2;

output [N-1:0] diff;

assign diff [N-1:0] = {1'b0,input1} - {1'b0,input2};

endmodule
