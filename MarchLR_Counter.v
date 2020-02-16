`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2019 01:49:15 AM
// Design Name: 
// Module Name: MarchLR_Counter
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


module MarchLR_Counter(
input clk,
output  reg [7: 0] Counter_Address,
output reg  WE,
output  reg [3 : 0] MSB,
output  reg [3 : 0 ]Comp_in_from_counter 

    );
    
     reg [8 : 0] Counter =0;
     reg [7 : 0] WE_Counter =0;
     reg [7 : 0] Not_WE_Counter =0;
     reg [3:0] count=0;
     
always @ (posedge clk) 

begin 
Counter_Address <= Counter;
if (count ==14) 
begin 
Counter <= Counter +     1;

MSB <= 1;


end 
if (count ==13)
begin 
WE <=0;
Comp_in_from_counter<= 0;
count <= 14;
end 

if (count == 12)
begin 
WE <=1;
MSB <= 0;
count <=9;

 Counter <= Counter + 1;
 if (Counter == 255 ) 
 begin
 Counter <= 0;
 count <= 13; 

 end

end

if (count == 11) 
begin 
WE <= 0;
Comp_in_from_counter<= 1;
count <= 12;
end 

if (count ==10)
begin 

WE <=1;
MSB <= 1;
count <=11;


end
if (count ==9 ) 
begin
WE<= 0;
Comp_in_from_counter<= 0;
count<=10; 
end

if (count ==8)
begin 
Counter <= Counter + 1;
WE <=1;
MSB <= 0;
count <=7;

 if (Counter == 255 ) 
 begin
 Counter <= 0;
 count <= 9; 

 end

end 
if (count ==7) 
begin 
WE<= 0;

Comp_in_from_counter<= 1;
count <=8;
end


if (count == 6)
begin 
Counter <= Counter + 1;
WE <=1;
MSB <= 1;
count <=3;

 if (Counter == 255 ) 
 begin
 Counter <= 0;
 count <= 7; 

 end
end

if (count == 5) 
begin 
WE <= 0;
Comp_in_from_counter<= 0;
count <= 6;
end 

if (count ==4)
begin 

WE <=1;
MSB <= 0;
count <=5;



end
if (count ==3 ) 
begin
WE<= 0;
Comp_in_from_counter<= 1;
count<=4; 
end
if (count ==2)
begin 
WE <= 0;
count <=1;
end

if (count == 1)
begin
Counter <= Counter - 1;
WE <=1;
MSB <= 1;
count <=2;
Comp_in_from_counter<= 0;
 if (Counter == 0 ) 
 begin
 Counter <= 0;
 count <= 3; 

 end
end 

if (count == 0)
begin
Counter <= Counter + 1;
WE <= 1;
//Counter_Address <= Counter [7:0];
MSB <= 0;
 if (Counter == 255 ) 
 begin
 Counter <= 255;
 count<=1;
 end

end 
end

endmodule
