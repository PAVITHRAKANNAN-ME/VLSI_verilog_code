module full_sub(input a,b ,c,output diff, output borrow);
  assign diff=a^b^c;
  assign borrow=~(a)&b|c&~(a^b);
endmodule

FULL_SUBTRACTOR_TEST_BENCH:

module tb;
  reg a, b, c;
  wire diff,borrow;
  full_sub fs(a, b,c, diff, borrow);
  initial begin
    $monitor("At time %0t: a=%b b=%b c=%b ,diff=%b, borrow=%b",$time, a,b,c,diff,borrow);
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
    #1;
  end
  initial begin
    $dumpfile("full_sub.vcd");
    $dumpvars(1);
  end
endmodule
