// 1K entry instrutction memory.

module instructionMemory (readInst, readAddr, writeInst, writeAddr);

parameter N = 19;
parameter O = 10; //since we need 1000 addresses

input [N-1:0] writeInst;
input [O-1:0] writeAddr, readAddr;

output [N-1:0] readInst;

reg [N-1:0] instMem [0:N-1];


//reading the instruction from the address that is given 
integer readAddrInt;
always@(readAddr)
begin
readAddrInt = readAddr;
end

assign readInst = instMem[readAddrInt];

//checking the write address and writing the instruction into the Instruction Memory
integer writeAddrInt;
always@(writeAddr)
begin
writeAddrInt = writeAddr;
instMem [writeAddrInt] <= writeInst;
end

endmodule

