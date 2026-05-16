module binary_to_7seg (
    // Inputs
    input        clk,            // Clock signal for sequential logic (if needed)
    input  [3:0] binary_in,     // 4-bit binary input to be converted

    // Outputs
    output reg [6:0] segment // Segments of the 7-segment display active-low (0-6 on the DE-10 Lite) 
);

// Clocked process to convert binary input to 7-segment output
always @(posedge clk) begin
// always @(*) begin
    case (binary_in)
        4'b0000: segment = 7'b1000000; // 0
        4'b0001: segment = 7'b1111001; // 1
        4'b0010: segment = 7'b0100100; // 2
        4'b0011: segment = 7'b0110000; // 3
        4'b0100: segment = 7'b0011001; // 4
        4'b0101: segment = 7'b0010010; // 5
        4'b0110: segment = 7'b0000010; // 6
        4'b0111: segment = 7'b1111000; // 7
        4'b1000: segment = 7'b0000000; // 8
        4'b1001: segment = 7'b0011000; // 9
        4'b1010: segment = 7'b0001000; // A
        4'b1011: segment = 7'b0000011; // B
        4'b1100: segment = 7'b1000110; // C
        4'b1101: segment = 7'b0100001; // D
        4'b1110: segment = 7'b0000110; // E
        4'b1111: segment = 7'b0001110; // F
        default: segment = 7'b1111111; // Blank for invalid input
    endcase
end

endmodule