`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "scoreboard.sv"
`include "monitor.sv"

class environment;

  scoreboard scb;
  monitor    mon;
  driver     dri;
  generator  gen;

  virtual intf vif;
  mailbox gen2driv;
  mailbox mon2scb;

  function new (virtual intf vif);
    this.vif = vif;

    gen2driv = new();
    mon2scb  = new();

    gen = new(gen2driv);
    dri = new(gen2driv, vif);
    mon = new(mon2scb, vif);
    scb = new(mon2scb);
  endfunction

  task run();
    fork
      gen.main();
      dri.main();
      mon.main();
      scb.main();
    join
  endtask

endclass
