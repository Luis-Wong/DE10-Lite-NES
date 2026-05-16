module binary_to_7seg_tb;
    reg clk;
    reg [3:0] binary_in;
    wire [6:0] segment;

    // Instantiate the binary to 7-segment converter
    binary_to_7seg uut (
        .clk(clk),
        .binary_in(binary_in),
        .segment(segment)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100 MHz clock
    end

    logic [3:0] test_inputs [15:0] = '{4'b0000, 4'b0001, 4'b0010, 4'b0011, 4'b0100, 4'b0101, 4'b0110, 4'b0111,
                          4'b1000, 4'b1001, 4'b1010, 4'b1011, 4'b1100, 4'b1101, 4'b1110, 4'b1111};

    logic [6:0] test_outputs [15:0] = '{7'b1000000, 7'b1111001, 7'b0100100, 7'b0110000, 7'b0011001, 7'b0010010, 7'b0000010, 7'b1111000,
                          7'b0000000, 7'b0011000, 7'b0001000, 7'b0000011, 7'b1000110, 7'b0100001, 7'b0000110, 7'b0001110};

    // Test sequence
    initial begin
        // Test all possible 4-bit inputs (0 to 15)
        for (int i = 0; i < 16; i = i + 1) begin
            binary_in = test_inputs[i]; 
            #10; // Wait for the output to stabilize
            // Check if the output matches the expected value $error("Test failed for input %b: expected %b, got %b", binary_in, test_outputs[i], segment);
            if (segment !== test_outputs[i]) begin
                $error("Test failed for input %b: expected %b, got %b", binary_in, test_outputs[i], segment);
            end else begin
                $display("Test passed for input %b: got expected output %b", binary_in, segment);
            end
        end
        
        $stop; // End the simulation
    end
endmodule