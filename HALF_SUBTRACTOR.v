module half_sub(input a,b ,output diff, output borrow);
  assign diff=a^b;
  assign borrow=~(a)&b;
endmodule

HALF_SUBTRACTOR_TEST_BENCH

module tb;
  reg a, b;
  wire diff,borrow;
  
  half_sub hs(a, b, diff, borrow);
  
  initial begin
    $monitor("At time %0t: a=%b b=%b diff=%b, borrow=%b",$time, a,b,diff,borrow);
   
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
    $dumpfile("half_sub.vcd");
    $dumpvars(1);
  end
endmodule
