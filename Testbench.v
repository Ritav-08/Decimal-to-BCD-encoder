`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2026 16:22:37
// Design Name: 
// Module Name: tb_DtBCDencoder
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


module tb_DtBCDencoder();
reg [9:0]a_i;
wire [3:0]y_o;

//instantiation
DtBCDencoder UUT(.a_i(a_i), 
    .y_o(y_o));

initial begin //feeding inputs
a_i = 10'b0000000000; //all 0s
#2 $display("Time: %0t | Decimal: None (%b) | BCD: %b", $time, a_i, y_o);
#3 a_i = 10'b0000000001; //0
#2 $display("Time: %0t | Decimal: 0 (%b) | BCD: %b", $time, a_i, y_o);
#3 a_i = 10'b0000000010; //1
#2 $display("Time: %0t | Decimal: 1 (%b) | BCD: %b", $time, a_i, y_o);
#3 a_i = 10'b0000000100; //2
#2 $display("Time: %0t | Decimal: 2 (%b) | BCD: %b", $time, a_i, y_o);
#3 a_i = 10'b0000001000; //3
#2 $display("Time: %0t | Decimal: 3 (%b) | BCD: %b", $time, a_i, y_o);
#3 a_i = 10'b0000010000; //4
#2 $display("Time: %0t | Decimal: 4 (%b) | BCD: %b", $time, a_i, y_o);
#3 a_i = 10'b0000100000; //5
#2 $display("Time: %0t | Decimal: 5 (%b) | BCD: %b", $time, a_i, y_o);
#3 a_i = 10'b0001000000; //6
#2 $display("Time: %0t | Decimal: 6 (%b) | BCD: %b", $time, a_i, y_o);
#3 a_i = 10'b0010000000; //7
#2 $display("Time: %0t | Decimal: 7 (%b) | BCD: %b", $time, a_i, y_o);
#3 a_i = 10'b0100000000; //8
#2 $display("Time: %0t | Decimal: 8 (%b) | BCD: %b", $time, a_i, y_o);
#3 a_i = 10'b1000000000; //9
#2 $display("Time: %0t | Decimal: 9 (%b) | BCD: %b", $time, a_i, y_o);
#3 $finish;
end

initial begin //capture
//$monitor("Time: %0t | Input lines: %b | BCD: %b", $time, a_i, y_o); //comment or remove all '$display()', then uncomment
$dumpfile("DtBCDencoder.vcd");
$dumpvars(0, tb_DtBCDencoder);
end

endmodule
