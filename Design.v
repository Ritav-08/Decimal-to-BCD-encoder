`timescale 1ns / 1ps

module DtBCDencoder(
    input [9:0]a_i, 
    output reg [3:0]y_o
);

//10 input lines for 0-9
always@(*)
case (a_i)
10'b0000000001: y_o = 4'b0000; //0
10'b0000000010: y_o = 4'b0001; //1
10'b0000000100: y_o = 4'b0010; //2
10'b0000001000: y_o = 4'b0011; //3
10'b0000010000: y_o = 4'b0100; //4
10'b0000100000: y_o = 4'b0101; //5
10'b0001000000: y_o = 4'b0110; //6
10'b0010000000: y_o = 4'b0111; //7
10'b0100000000: y_o = 4'b1000; //8
10'b1000000000: y_o = 4'b1001; //9
default: y_o = 4'bxxxx; //X
endcase

endmodule
