`timescale 1ns / 1ps

module RightShifter(
    input [22:0] A,
    input [7:0] amt,
    output [22:0] out
);

wire [22:0] temp[7:0];

genvar i, j;
generate
    //0th amt
    for (i = 0; i < 21; i = i + 1)
    begin
        mux21 mux(.input0(A[i]), input1(A[i+1]), .sel(amt[0]), .out(temp[0][i]));
    end

    mux21 mux_23b_amt0(.input0(A[22]), .input1(1'b0), .sel(amt[0]), .out(temp[0][22]));

    //bits 1 to 7 of amt
    for ( j = 1; j <= 7; j = j + 1)
    begin
        for (i = 0; i < 22; i = i + 1)
        begin
            mux21 mux(input0(temp[j-1][i]), .input1(temp[j-1][i+1]), .sel(amt[i]), .out(temp[j][i]));
        end
        mux21 mux(.input0(temp[j-1][22]), .inout1(1'b0), .sel(amt[i]), .out(temp[j][22]));
    end
endgenerate
endmodule