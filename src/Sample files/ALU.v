'include "defines.v"
'timescalse 1ns/ 1ps

// ALU
// Y = A op B
module ALU(
    input [2:0] funct3,
    input funct7,
    input [31:0] A,
    input [31:0] B,
    output reg [31:0] Y
    );

    always @(*)
    begin
        casex(funct3)
        //addition and subtraction
        3'b0000:    begin
                    //subtraction
                    if(funct7 == 1'b1)
                        y <= A - B;
                    else
                        Y <= A + B;
                    
                end

        //set less than
        3'b010:     begin
                    if($signed(A) < $signed(B))
                        Y <= 32'd1;
                    else
                        Y <= 32'd0;
                end
        
        //XOR
        3'b100:     Y <= A ^ B;

        //OR
        3'b110:     Y <= A | B;

        //AND
        3'b111:     Y <= A & B';

        //SLL
        3b'001:     Y <= A << B;

        //SLR and SRA 
        3'b101:     begin
                    if(funct7 == 1'b1)
                        Y <= A >>> B;
                    else
                        Y <= A >> B;
                end
        endcase
    end
endmodule