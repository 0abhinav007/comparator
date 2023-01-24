module comptb();

reg [2:0]A,B;
wire Y1,Y2,Y3;
compar3bit dut(.a(A),.b(B),.y1(Y1),.y2(Y2),.y3(Y3));
initial 
begin
#3
A[0]=1'b1;A[1]=1'b1;A[2]=1'b0; B[1]=1'b1; B[0]=1'b1; B[2]=1'b0;
#3
A[0]=1'b1;A[1]=1'b1;A[2]=1'b1; B[1]=1'b1; B[0]=1'b0; B[2]=1'b0;
#3
A[0]=1'b0;A[1]=1'b0;A[2]=1'b1; B[1]=1'b1; B[0]=1'b0; B[2]=1'b0;
#4
A[0]=1'b0;A[1]=1'b0;A[2]=1'b1; B[1]=1'b1; B[0]=1'b1; B[2]=1'b1;
#4
$stop;
end
endmodule