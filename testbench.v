module bin_to_gray_tb();
    reg [3:0] bin;
    wire [3:0] gray;

    bin_to_gray uut(bin, gray);

    initial begin
        bin = 4'b0000;
        repeat(16) begin
            #2 bin = bin + 1;
        end
        #5 $finish;
    end

    initial begin
        $monitor("Binary = %b, Gray = %b", bin, gray);
    end
endmodule
