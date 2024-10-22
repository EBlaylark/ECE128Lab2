module TopModule(

input [1:0] s,
input [1:0] i0, i1, i2, i3,
output [6:0] seg);

wire [1:0] o;
wire [3:0] bcdvar;
assign bcdvar = {2'b00, o};

Mux4_1 uut1 (i0, i1, i2, i3, s, o);

bcd uut2 (bcdvar, seg);

endmodule


