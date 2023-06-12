module ALU_16bit (
    input [15:0] a, b,     // 16-bit inputs
    input [3:0] opcode,    // 4-bit opcode
    output reg [15:0] result // 16-bit output
    );

    always @(a, b, opcode) begin
        case(opcode)
            4'b0000: result = a + b;    // addition
            4'b0001: result = a - b;    // subtraction
            4'b0010: result = a & b;    // AND
            4'b0011: result = a | b;    // OR
            4'b0100: result = a ^ b;    // XOR
            4'b0101: result = a << b;   // shift left
            4'b0110: result = a >> b;   // shift right
            4'b0111: result = ~a;       // NOT
            4'b1000: result = a < b ? 16'b1 : 16'b0; // less than comparison
            4'b1001: result = a > b ? 16'b1 : 16'b0; // greater than comparison
            default: result = 16'b0;    // default case
        endcase
    end

endmodule
