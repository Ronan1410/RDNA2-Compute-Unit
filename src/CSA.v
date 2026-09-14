//Carry Save Adder

`timescale 1ns/ 1ps

module CSA(
    input wire A[1:0],
    input wire S[1:0],
    output reg Sum[1:0],
    output reg Carry[1:0]
    );
reg temp_sum[1:0];
reg temp_carry[1:0];

genvar i;
generate
    for (i = 0; i < 2; i = i + 1)
    begin
        fulladder bit_orig(.A(A), .B(B), .Sum(temp_sum[i]), .Cout(temp_carry[i+1]));
    end
endgenerate

assign temp_carry[0] = 1'b0;
assign temp_sum[2] = 1'b0;

endmodule