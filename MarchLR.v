`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2019 01:48:03 AM
// Design Name: 
// Module Name: MarchLR
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


module MarchLR_BIST(
input Clock,
output GoNoGo,Done
    );
    wire [7:0] Adr_Counter_SRAM;
    wire WE_Counter_SRAM;
    wire [3:0]Data_in_Counter_SRAM;
    reg [12:0] Done_Counter = 0;
    wire [3:0] Comp_in_from_counter;
     wire [3:0]Data_out_SRAM_Comp;
    wire Comparator_output;
   MarchLR_Counter LR_Counter (.clk(Clock), .Counter_Address(Adr_Counter_SRAM), .WE(WE_Counter_SRAM) , .MSB (Data_in_Counter_SRAM),.Comp_in_from_counter(Comp_in_from_counter));
   MarchLR_SRAM LR_SRAM(.data_in(Data_in_Counter_SRAM), .clk(Clock), .WE (WE_Counter_SRAM) , .Address (Adr_Counter_SRAM) , .data_out(Data_out_SRAM_Comp));
   March_Comparator LR_Comp (.clk(Clock), .Comp_in1 ( Comp_in_from_counter) , .Comp_in2 (Data_out_SRAM_Comp) ,.Comp_out(Comparator_output),.enable (WE_Counter_SRAM));
   SR_FF LR_SRFF (.clk (Clock), .s (  Comparator_output),.GoNoGo (GoNoGo)); 
   
   always @(posedge Clock)
   begin 
   Done_Counter <= Done_Counter + 1 ;
   end 
   assign Done = (Done_Counter == 3600) ?1: 0;
endmodule
