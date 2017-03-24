//RAM - 32K entry - created by Deva
//reads data from the address given
//writes data to the address given
module RAM (readData, readAddress, writeData, writeAddress);

parameter N = 32; //width of each entry
parameter O = 15; //for the addresses - 32 K entry
parameter numOfEntries = 32000; //32000 entries 

input [N-1:0] writeData;
input [O-1:0] writeAddress, readAddress;


output [N-1:0] readData;

reg [N-1:0] entry [0:numOfEntries-1]; //making 32bit wide, 32000 entries (array)

//reading the data from the address that is given 
integer readAddressInt;
always@(readAddress)
begin
readAddressInt = readAddress;
end

assign readData = entry[readAddressInt];

//checking the write address and writing the instruction into the Instruction Memory
integer writeAddressInt;
always@(writeAddress)
begin
writeAddressInt = writeAddress;
entry[writeAddressInt] <= writeData;
end

endmodule
