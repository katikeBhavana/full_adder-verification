class driver;

  transaction tr;
  mailbox gen2driv;
  virtual intf vif;

  function new(mailbox gen2driv, virtual intf vif);
    this.gen2driv = gen2driv;
    this.vif      = vif;
  endfunction

  task main();
    repeat (3) begin
      gen2driv.get(tr);      
      tr.display("[DRIVER]");  
      vif.a   = tr.a;
      vif.b   = tr.b;
      vif.cin = tr.cin;

      #1;
    end
  endtask

endclass
