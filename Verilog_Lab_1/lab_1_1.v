module lab_1_1 (
    input [3:0] a,
    input y,
    input k,

    output f);

    assign f = ((a[0] | y) ^ k & a[2] & (k | ~a[3]));

endmodule