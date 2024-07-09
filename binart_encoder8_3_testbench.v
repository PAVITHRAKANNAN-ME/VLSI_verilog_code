module tb;
  reg [7:0] D;
  wire [2:0] y;
  int g;
  binary_encoder be(D, y);
  initial begin
    D=8'b1; #1;
    for(g=0; g<8; g++) begin
      $display("D = %h, y = %0h", D, g, y);
      D=D<<1; #1;
    end
  end
  initial begin
    $dumpfile("binary_encoder.vcd");
    $dumpvars(1);
              end
endmodule
