module majority(a, b, c, out);
    output out;
    input a, b, c;
    wire d, e, f;
    and(d, a, b);
    and(e, a, c);
    and(f, b, c);
    or(out, d, e, f);
endmodule
