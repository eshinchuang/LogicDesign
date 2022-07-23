module da01 (a1, a0, b2, b0, g1, g0);
    input a1, a0, b1, b0;
    output g1, g0;
    assign g1 = (a0 & (~a1) & b0) | (a0 & b1 & b0) | (a1 & a0 & b1) | (a1 & b1 & ~b0) | (a1 & ~a0 & ~b1 & b0);
    assign g0 = (a0 & ~b1 & b0) | (a1 & b1 & b0) | (a1 & a0 & b0) | (a1 & ~a0 & b1) | (~a1 & a0 & b1 & ~b0);
endmodule