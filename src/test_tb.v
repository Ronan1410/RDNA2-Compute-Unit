`timescale 1ps/1ps

module test_tb;
`include "Vdefines.sv"

reg[31:0] test;
wire[31:0] boop;

temp_test temp_test(
    .test(test),
    .boop(boop)
);

initial begin
    test = `pos_inf_32;
    #1;
    $display("test=%h boop=%h", test, boop);
    $finish;
    end

endmodule
