`timesclae 1ns / 1ps

module FullSubtractor(
    input A,
    input B,
    input Bin,
    output D,
    output Bout
);

assign D = (~A)&(~B)&(Bin) | (A)&(~B)&(~Bin) | (~A)&(B)&(~Bin) | (A)&(B)&(Bin);
assign Bout = (~A)&(B) | (~A)&(Bin) | (B)&(Bin);
endmodule