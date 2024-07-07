module tb;
  reg s,i0,i1;
  wire y;
  mux_2to1 g1(s,i0,i1,y);
  initial begin
    $monitor("s=%b,i0=%b,i1=%b,y=%b",s,i0,i1,y);
    s=0;
    i0=1;i1=0;
   #1 s=1;
  end
  initial
    begin
      $dumpfile("mux_2to1.vcd");
      $dumpvars(1);
    end
endmodule
