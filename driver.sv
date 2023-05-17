class driver;
  transaction t;
  mailbox mbx;
  event done;
  
  virtual andt_intf vif;
  
  function new(mailbox mbx);
    this.mbx = mbx;
  endfuncton
    
    task run();
      t = new();
      forever begin
        mbx.get(t);
        vif.a = t.a;
        vif.b = t.b;
        $display("[DRV]: data sent to interface");
        -> done;
        #10;
      end
    endtask
    
endclass
