module tb;
  reg s;
  reg i;
  wire y0,y1;
  
  demux_1_2 demux(s,i, y0, y1);
  
  initial begin
    $monitor("s = %h , i= %h , y0 = %h,y1 = %h", s,i, y0,y1);
    s=0; i=0; #1;
    s=0; i=1; #1;
    s=1; i=0; #1;
    s=1; i=1; #1;
    end


  initial
    begin
      $dumpfile("demux_1_2.vcd");
      $dumpvars(1);
    end
endmodule
