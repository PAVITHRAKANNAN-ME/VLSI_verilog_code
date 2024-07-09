module tb;
  reg [2:0] D;
  wire [7:0] y;
  binary_decoder bd(D, y);
  initial begin
    $monitor("D = %h, y = %h", D, y);
    repeat(10) begin
      D=$random; #1;
    end
  end
  initial begin
    $dumpfile(" binary_decoder.vcd");
    $dumpvars(1);
              end
endmodule
 
