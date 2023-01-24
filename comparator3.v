module compar3bit(a,b,y1,y2,y3);
input [2:0]a,b;
output y1,y2,y3;
wire [20:0]w;

not a1(w[19],b[2]);
not a2(w[18],b[1]);
not a3(w[17],b[0]);
not a4(w[16],a[2]);
not a5(w[15],a[1]);
not a6(w[14],a[0]);

xnor a7(w[1],a[0],b[0]);
xnor a8(w[2],b[2],a[2]);
xnor a9(w[3],b[1],a[1]);

and a10(w[4],w[19],a[2]);
and a11(w[5],w[18],a[1]);
and a12(w[6],w[17],a[0]);

and a13(w[7],w[16],b[2]);
and a14(w[8],w[15],b[1]);
and a15(w[9],w[14],b[0]);

and a16(w[10],w[2],w[5]);
and a17(w[11],w[3],w[2],w[6]);
and a18(w[12],w[2],w[8]);
and a19(w[13],w[9],w[3],w[2]);
and a20(y1,w[2],w[3],w[1]);
or a21(y2,w[4],w[10],w[11]);
or a22(y3,w[7],w[12],w[13]);

endmodule