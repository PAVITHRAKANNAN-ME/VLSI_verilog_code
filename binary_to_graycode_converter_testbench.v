module tb;
  reg [3:0] binary; 
  wire [3:0]gray;
  b2g_converter g1(binary, gray);
  
  initial begin
    $monitor("Binary = %b , Gray = %b", binary, gray);
    binary = 4'b1011; #1;
    binary = 4'b0111; #1;
    binary = 4'b0101; #1;
    binary = 4'b1100; #1;
    binary = 4'b1111;
  end
  initial begin
    $dumpfile("b2g_converter.vcd");
    $dumpvars(1);
  end
endmodule
