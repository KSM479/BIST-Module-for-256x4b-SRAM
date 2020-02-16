`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2019 10:43:17 PM
// Design Name: 
// Module Name: Full_BIST
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


module Full_BIST(
input [2:0] What_Do_You_Want_To_Check,
input clk,WE,
input [7:0] Address,
input [3:0] Data_Input,
output [3:0] Data_output,
output reg GoNoGo
    );
    wire GoNoGo1,GoNoGo2,GoNoGo3,GoNoGo4;
    reg clk1,clk2,clk3,clk4,clk5;
    wire Done1,Done2,Done3,Done4;
    
    always@ (*)
    begin
    if (What_Do_You_Want_To_Check == 0) 
    begin 
    clk1 <= clk;
    GoNoGo<=GoNoGo1;
    clk2 <= 0;
    clk3 <= 0;
    clk4 <= 0;
    clk5 <= 0;
        if (Done1 == 1) clk1 <= 0;
    end
    
    if ( What_Do_You_Want_To_Check == 1)
    begin
    clk2 <= clk;
    GoNoGo<=GoNoGo2;
    clk1 <= 0;
    clk3 <= 0;
    clk4 <= 0;
    clk5 <= 0;
         if (Done2 == 1) clk2 <=0;
    end 
    
        if ( What_Do_You_Want_To_Check == 2)
    begin
    clk3 <= clk;
    GoNoGo<=GoNoGo3;
    clk1 <= 0;
    clk2 <= 0;
    clk4 <= 0;
    clk5 <= 0;
          if(Done3 == 1) clk3 <=0;
    end
        if ( What_Do_You_Want_To_Check == 3)
    begin
    clk4 <= clk;
    GoNoGo<=GoNoGo4;
    clk1 <= 0;
    clk2 <= 0;
    clk3 <= 0;
    clk5 <= 0;
    if(Done4 == 1) clk4 <=0;
    end
        if ( What_Do_You_Want_To_Check == 4)
    begin
    clk5 <= clk;
    GoNoGo<=0;
    clk1 <= 0;
    clk3 <= 0;
    clk4 <= 0;
    clk2 <= 0;
    
    end
    end
     //  SRAM Full_SRAM( .clk (clk), .WE(WE), .Address(Address),.data_in(Data_Input),.data_out(Data_output));
  
  Blanket_BIST B_BIST (.Clock (clk1) , .GoNoGo (GoNoGo1), .Done (Done1));
  Checker_BIST C_BIST (.Clock (clk2) , .GoNoGo (GoNoGo2),.Done(Done2));
  March_BIST M_BIST (.Clock (clk3) , .GoNoGo (GoNoGo3),.Done(Done3));
  MarchLR_BIST MLR_BIST (.Clock (clk4) , .GoNoGo (GoNoGo4),.Done(Done4));
  SRAM Full_SRAM( .clk (clk5), .WE(WE), .Address(Address),.data_in(Data_Input),.data_out(Data_output));

endmodule
