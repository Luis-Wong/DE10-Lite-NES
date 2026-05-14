module alu_2a03 (
    // Data Inputs
    input  [7:0] bus_a,        // Primary input (B1)
    input  [7:0] bus_b,        // Secondary input (A1)

    // Control/Enable Signals
    input        sums_en,      // ENABLE SUMS
    input        ands_en,      // ENABLE ANDS
    input        eors_en,      // ENABLE EORS
    input        ors_en,       // ENABLE ORS
    input        srs_en,       // ENABLE SRS (Shift Right)

    // Arithmetic Control (Top/Bottom)
    input        carry_in,     // I/ADDC

    // Omit Decimal Enable for now, as it's not used in the NES CPU

    // Outputs (Right and Bottom)
    output [7:0] result,       // Main output bus
    output       avr,          // OVERFLOW
    output       acr,          // CARRY (ACR)
    output       hc            // HALF CARRY
);

endmodule