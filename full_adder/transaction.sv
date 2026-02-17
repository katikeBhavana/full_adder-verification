class transaction;
  rand bit a, b, cin;
       bit s, c;

  function void display(string handle);
    $display("------------------------");
    $display("%s", handle);
    $display("A=%b, B=%b, Cin=%b, S=%b, C=%b", a, b, cin, s, c);
    $display("------------------------");
  endfunction

endclass
