class scoreboard;
  transaction t;
  mailbox mbx;
  bit [7:0] temp; 
  
  function new(mailbox mbx);
    this.mbx = mbx;
  endfunction
  
  task run();
    t = new();
    forever begin
      mbx.get(t);
      temp = t.a & t.b;
      if(t.y == temp) begin
        $display("[SCO]: Test Passed");
      end
        else 
          begin
            $display("[SCO]: Test Failed");
          end
      end
  endtask
endclass
