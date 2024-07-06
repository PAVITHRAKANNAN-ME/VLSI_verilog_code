module tb;
  reg [3:0]A, B; 
  reg Cin;
  wire [3:0] S;
  wire Cout;
  wire[4:0] addition;
  
  CarryLookAheadAdder cla(A, B, Cin, S, Cout);
  
  assign addition = {Cout, S};
  initial begin
    $monitor("A = %b,B = %b, Cin = %b , S = %b, Cout = %b, Addition = %0d", A, B, Cin, S, Cout, addition);
    A = 1; B = 0; Cin = 0; #3;
    A = 2; B = 4; Cin = 1; #3;
    A = 4'hb; B = 4'h6; Cin = 0; #3;
    A = 5; B = 3; Cin = 1;
  end
  initial begin
    $dumpfile("CarryLookAheadAdder.vcd");
    $dumpvars(1);
  end
endmodule
