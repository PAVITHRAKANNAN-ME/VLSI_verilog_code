module CarryLookAheadAdder(
  input [3:0]A, B, 
  input Cin,
  output [3:0] S,
  output Cout
);
  wire [3:0] C;
  
  assign C[0] = Cin;
  assign C[1] = (A[0] & B[0]) | ((A[0]^B[0]) & C[0]);
  assign C[2] = (A[1] & B[1]) | ((A[1]^B[1]) & C[1]); 
  assign C[3] = (A[2] & B[2]) | ((A[2]^B[2]) & C[2]); 
  assign Cout  = (A[3] & B[3]) | ((A[3]^B[3]) & C[3]);
  assign S = A^B^C;
endmodule
