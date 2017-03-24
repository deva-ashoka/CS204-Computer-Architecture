// 32 entry register file - made in class.
//reads data from the specified address
//writes data to the specified address


module registerFile (readData, readAddress, writeData, writeAddress);

parameter N = 32;
parameter O = 5; //for the addresses

input [N-1:0] writeData;
input [O-1:0] writeAddress, readAddress;

output [N-1:0] readData;

reg [N-1:0] register [0:N-1];

//reading the data from the address that is given 
integer readAddressInt;
always@(readAddress)
begin
readAddressInt = readAddress;
end

assign readData = register[readAddressInt];

//checking the write address and writing the instruction into the Instruction Memory
integer writeAddressInt;
always@(writeAddress)
begin
writeAddressInt = writeAddress;
register[writeAddressInt] <= writeData;
end

endmodule

