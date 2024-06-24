module full_adder(input a,b,c ,output sum, output cout);
  assign sum=a^b^c;
  assign cout=(a&b)|(b&c)|(c&a);
endmodule

FULL_ADDER_TEST_BENCH:
module tb;
  reg a, b, c;
  wire s, c_out;
  
  full_adder fa(a, b, c, s, c_out);
  
  initial begin
    $monitor("At time %0t: a=%b b=%b c=%b, sum=%b, carry=%b",$time, a,b,c,s,c_out);
    a = 0; b = 0; c = 0;
    #1;
    a = 0; b = 0;c = 1;
    #1;
    a = 0; b = 1;c = 0;
    #1;
    a = 0; b = 1;c = 1;
    
    #1;
    a = 1; b = 0;c = 0;
    #1;
    a = 1; b = 0;c = 1;
     #1;
    a = 1; b = 1;c = 0;
    
    #1;
    a = 1; b = 1;c = 1;
  end
  initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(1);
  end
endmodule
