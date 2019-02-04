`timescale 1ns / 1ps



module sending_tb();
reg clk;
reg reset;
reg [31:0] ih1,ih2,ih3,ih4,ih5,ih6;
wire valid;
wire invalid;
wire [3:0] version;
wire [3:0] ihl;
wire [7:0]type_of_svc;
wire [15:0]total_length;
wire [15:0]packet_identification;
wire [2:0]flags;
wire [12:0]fragment_offset;
wire [7:0]time_to_live;
wire [7:0]protocol;
wire [15:0]header_chksum;
wire [31:0] source_ip_address;
wire [31:0]destination_ip_address;
wire [31:0]data;
wire [3:0] x1;
assign x1=DUT.state;
segmentation DUT(valid,invalid,clk,reset,ih1,ih2,ih3,ih4,ih5,ih6,version,ihl,type_of_svc,total_length,packet_identification,flags,fragment_offset,time_to_live,protocol ,header_chksum,source_ip_address,destination_ip_address,data);
initial
begin
clk=0;
reset=1;

#30 reset=0;
end


initial 
begin 
ih1 <= 32'b01000101000000010000000000011000;
ih2 <= 32'b00000000000000000100000000000001;
ih3 <= 32'b01111011000001101111110011101101;
ih4 <= 32'b11000000000000000000000000000001;
ih5 <= 32'b11000100000000000000000000000001;
ih6 <= 32'b11000100000000000000000000000111;
#100000 $finish;
end 
 
always
begin
#20 clk=~clk;
end 


endmodule
