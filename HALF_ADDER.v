module half_adder(input a, input b, output sum, output carry);
  assign sum=a^b;
  assign carry=a&b;
endmodule


HALF_ADDER_TEST_BENCH:

module tb;
  reg a, b;
  wire s, c_out;
 half_adder ha(a, b, s, c_out);
  initial begin
    $monitor("At time %0t: a=%b b=%b, sum=%b, carry=%b",$time, a,b,s,c_out);
    a = 0; b = 0;
    #1;
    a = 0; b = 1;
    #1;
    a = 1; b = 0;
    #1;
    a = 1; b = 1;
    #1;
  end
  initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(1);
  end
endmodule
