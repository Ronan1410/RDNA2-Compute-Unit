`timescale 1ns / 1ps

module Program_Counter(
    input SET_PC,
    input [7:0] PC_IN,
    input clock,
    input INC_pc
    output reg [7:0] PC_OUT
    );

    always @(posedge clock)
    begin
        if(SET_PC)
            PC_OUT <= PC_IN;
        if(INC_pc)
            PC_OUT <= PC_OUT + 4;
    end
endmodule