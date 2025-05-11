module alu (
    input [7:0] A,
    input [7:0] B,
    input [2:0] opcode,
    output reg [7:0] result
);

always @(*) begin
    case (opcode)
        3'b000: result = A + B;     
        3'b001: result = A - B;     
        3'b010: result = A & B;     
        3'b011: result = A | B;     
        3'b100: result = ~A;        
        default: result = 8'b0;
    endcase
end

endmodule



module alu_tb;
    reg [7:0] A, B;
    reg [2:0] opcode;
    wire [7:0] result;

    alu uut (.A(A), .B(B), .opcode(opcode), .result(result));

    initial begin
        A = 8'h0A; B = 8'h05;

        opcode = 3'b000; #10;
        $display("ADD: %d + %d = %d", A, B, result);

        opcode = 3'b001; #10;
        $display("SUB: %d - %d = %d", A, B, result);

        opcode = 3'b010; #10;
        $display("AND: %b & %b = %b", A, B, result);

        opcode = 3'b011; #10;
        $display("OR : %b | %b = %b", A, B, result);

        opcode = 3'b100; #10;
        $display("NOT: ~%b = %b", A, result);

        $stop;
    end
endmodule
