module tb;
  reg sel0,sel1;
  reg i0,i1,i2;
  wire y;
  
  mux_3_1 mux(sel0,sel1, i0, i1, i2, y);
  
  initial begin
    $monitor("sel0 = %b ,sel1 = %b, i2 = %0b ,i1 = %0b, i0 = %0b -> y = %0b", sel0,sel1,i2,i1,i0, y);
    {i2,i1,i0} = 4'h5;
    repeat(10) begin
      {sel1,sel0} = $random;
      #5;
    end
  end

  initial
    begin
      $dumpfile("mux_3_1.vcd");
      $dumpvars(1);
    end
endmodule
