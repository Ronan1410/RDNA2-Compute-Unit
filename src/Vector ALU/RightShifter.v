`timescale 1ns / 1ps

module RightShifter(
    input [23:0] A,
    input [7:0] amt,
    output reg [23:0] out
);

wire [23:0] temp[7:0];

genvar i, j;
generate
    //0th amt
    for (i = 0; i < 22; i = i + 1)
    begin
        mux21 mux(.input0(A[i]), input1(A[i+1]), .sel(amt[0]), .out(temp[0][i]));
    end

    mux21 mux_24b_amt0(.input0(A[23]), .input1(1'b0), .sel(amt[0]), .out(temp[0][23]));

    //bits 1 to 7 of amt
    for ( j = 1; j <= 7; j = j + 1)
    begin
        for (i = 0; i < 22; i = i + 1)
        begin
            mux21 mux(input0(temp[j-1][i]), .input1(temp[j-1][i+1]), .sel(amt[i]), .out(temp[j][i]));
        end
        mux21 mux(.input0(temp[j-1][23]), .inout1(1'b0), .sel(amt[i]), .out(temp[j][23]));
    end
endgenerate

always @(*)
begin
    out = temp[23];
end

endmodule