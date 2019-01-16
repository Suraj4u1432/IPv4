`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/15/2019 01:39:16 PM
// Design Name: 
// Module Name: chksum_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////




module chksum1();

reg [31:0] ih1,ih2,ih3,ih4,ih5,ih6;
reg clk;
reg [15:0] chksum;

reg [31:0] chksum32;
wire [15:0] m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10;

chksum1 c1(chksum,clk,ih1,ih2,ih3,ih4,ih5,ih6);
initial
begin

clk=0;
ih1<=32'b00000100000011111000001100101011;
ih2<=32'b00001000000011111000001100101011;
ih3<=32'b00010000000011111000001100101011;
ih4<=32'b00100000000011111000001100101011;
ih5<=32'b01000000000011111000001100101011;
ih6<=32'b10000000000011111000001100101011;
end
always
begin
#2 clk=~clk;
end
endmodule