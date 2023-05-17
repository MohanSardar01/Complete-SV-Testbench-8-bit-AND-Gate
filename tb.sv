module tb();
  
  environment env;
  
  mailbox gdmbx, 
  mailbox msmbx;
  
  initial begin
    gdmbx = new();
    msmbx = new();
  end
  
endmodule
