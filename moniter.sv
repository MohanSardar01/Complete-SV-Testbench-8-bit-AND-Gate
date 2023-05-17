class moniter;
  transaction t;
  mailbox mbx;
  virtual andt_intf vif;
  
  function new(mailbox mbx);
    this.mbx = mbx;
  endfunction
  
  task run();
    t = new();
    forever begin
      t.a = vif.a;
      t.b = vif.b;
      t.y = vif.y;
      mbx.put(t);
      $display("[MON]: data sent to SCO");
      #10;
    end
  endtask
  
endclass
