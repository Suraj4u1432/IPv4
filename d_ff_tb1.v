`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2019 04:45:27 PM
// Design Name: 
// Module Name: d_ff_tb1
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


module d_ff_tb1();
reg d,set,reset,clk;
wire q,qbar;
d_ff d1(d,set,reset,clk,q,qbar);
initial
begin
clk=0;
d=0;
#5 reset<=0;
set<=1;
#10 set<=0;
 reset<=1;
#15 set<=1;
end
always
begin
#10 clk=~clk;
end
always
begin
#20 d=~d;
end
endmodule
