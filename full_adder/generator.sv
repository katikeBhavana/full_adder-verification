class generator;

  transaction tr;
  mailbox gen2driv;

  function new(mailbox gen2driv);
    this.gen2driv = gen2driv;
  endfunction

  task main();
    repeat (3) begin
      tr = new(); // object creation

      tr.randomize();
        
      gen2driv.put(tr);   // put values in driver 
      tr.display("[GENERATOR]");

      #5;
    end
  endtask

endclass
