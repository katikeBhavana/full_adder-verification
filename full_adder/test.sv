`include "environment.sv"

module test (intf i_intff);

  environment e;

  initial begin
    e = new(i_intff);
    e.run();

    #50;           // allow simulation to run
    $finish;       // clean exit
  end

endmodule
