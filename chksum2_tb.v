`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2019 07:03:16 PM
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

module chksumtb();
reg reset;
reg[31:0] ih1,ih2,ih3,ih4,ih5,ih6;
wire [15:0] m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10;


reg clk;
wire [15:0]chksum;
wire [31:0]chksum32;
chksum2 xy(chksum,chksum32,clk,reset,ih1,ih2,ih3,ih4,ih5,ih6,m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10);
initial
begin
clk=0;
reset=1;
//ih1,ih2,ih3,ih4,ih5,ih6=32'h00000000;

 #90 reset=0;
 end
 initial
 begin
  ih1=32'habab8585;
 ih2=32'habab8585;
  ih3=32'habab8585;
  ih4=32'habab8585;
  ih5=32'habab8585;
   ih6=32'habab8585;
 end 
 
 always
 begin
 #1 clk=~clk;
 end 

 endmodule