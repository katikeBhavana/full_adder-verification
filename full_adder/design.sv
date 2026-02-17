module full_adder (
    input  a,
    input  b,
    input  cin,
    output s,
    output c
);

    assign s = a ^ b ^ cin;
    assign c = (a & b) | (b & cin) | (a & cin);

endmodule
