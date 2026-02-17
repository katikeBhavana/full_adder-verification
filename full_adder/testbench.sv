
`include "interface.sv"
`include "test.sv"

module testbench;

  intf i_intff();      

  full_adder DUT (
    .a(i_intff.a),
    .b(i_intff.b),
    .cin(i_intff.cin),
    .s(i_intff.s),
    .c(i_intff.c)
  );

  test b0(i_intff);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
  end

endmodule
