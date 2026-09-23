`timescale 1ns / 1ps

module Program_Counter(
    input SET_PC,
    input [7:0] PC_IN,
    input clock,
    output reg [7:0] PC_OUT
    );

    always @(posedge clock)
    begin
        if(SET_PC)
            PC_OUT <= PC_IN;
    end
endmodule