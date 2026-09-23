`timescale 1ns / 1ps

module S_ALU(
    instruction,
    clock
);
    //include the header files
    `include "scalars.vh"
    `include "SOP1.vh"
    `include "SOPK.vh"

    //input 64 bit instruction
    input [31:0] instruction;
    input clock;
    
    wire [6:0] SDST;
    wire [7:0] SSRC1, SSRC0;
    wire [16;0] SIMM;
    wire [6:0] op;
    wire [7:0] SOP1_op;
    wire [7:0] SOPK_op;
    wire [6:0] SOPC_SOPP_op;

    assign op = instruction[29:23];
    assign SOP1_op = instruction[15:8];
    assign SOPK_op = instruction[27:23];
    assign SOPC_SOPP_op = instruction[22:16];

    assign SDST = instruction[22:16];
    assign SSRC0 = instruction[7:0];
    assign SSRC1 = instruction[15:8];
    assign SIMM = instruction[15:0];

    //select lines s0 and s1 for reading vlaues at r0 and r1
    //select line w0 for writing value(wv) in the register file

    wire [7:0] s0, s1, w0;
    wire [63:0] wv, r0, r1, EXEC_in, EXEC_out;
    wire en_w, VCCZ_in, VCCZ_out, en_64, SCC_in. SCC_out, EXECZ_in, EXECZ_out;

    regFile regFIle(.s0(s0), .s1(s1),
                    .w0(w0), .wv(wv),
                    .clock(clock), .en_w(en_w),
                    .r0(r0), r1(r1), .en_64(en_64),
                    .VCCZ_in(VCCZ_in), .VCCZ_out(VCCZ_out),
                    .SCC_in(SCC_in), .SCC_out(SCC_out),
                    .EXECZ_in(EXECZ_in), .EXECZ_out(EXECZ_out),
                    .EXEC_in(EXEC_in), .EXEC_out(EXEC_out));

    always @(posedge clock)
    begin
        casex(op)
        //ALU operations for SOP1
            {SOP1}: begin
                casex(SOP1_op)
                S_MOV_B32: begin

                end

                endcase
            end
        //ALU operations for SOPP
            {SOPP}: begin
                casex(SOPC_SOPP_op)

                endcase
            end
        //ALU operations for SOPC
            {SOPC}: begin
                casex(SOPC_SOPP_op)

                endcase
            end
        //ALU operations for SOPK
            {SOPK, 3'bxxx}: begin
                casex(SOPK_op)

                endcase
            end
        //ALU operations for SOP2
        endcase
    end

    //disabling write enabled
    always @(negedge clock)
    begin
        en_w <= 0;
    end
endmodule