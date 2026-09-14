`timescale 1ps/1ps
`include "floats.vh"

module test_tb;

reg[31:0] test2;
wire[31:0] boop2;

temp_test temp_test(
    .test(test2),
    .boop(boop2)
);

initial begin
    test2 = 32'b00000000000000000000000000000000;
    #(10)
    test2 = `pos_inf_32;
    end

endmodule
