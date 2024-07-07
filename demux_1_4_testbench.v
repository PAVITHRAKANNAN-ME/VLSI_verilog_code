module tb;
  reg [1:0]s;
  reg i;
  wire y0,y1,y2,y3;
  
  demux_1_4 demux(s,i, y0, y1,y2,y3);
  
  initial begin
    $monitor("s = %h , i= %h , y0 = %h,y1 = %h y2 = %h,y3 = %h", s,i, y0,y1,y2,y3);
    s=2'b00; i=0; #1;
    s=2'b01; i=1; #1;
    s=2'b10; i=0; #1;
    s=2'b11; i=1; #1;
    end


  initial
    begin
      $dumpfile("demux_1_4.vcd");
      $dumpvars(1);
    end
endmodule
