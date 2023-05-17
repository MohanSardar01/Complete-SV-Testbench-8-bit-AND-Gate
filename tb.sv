module tb();
 
environment env;
 
mailbox gdmbx;
mailbox msmbx;
 
andt_intf vif();
 
andt dut (vif.a, vif.b,vif.y);
 
initial begin
gdmbx = new();
msmbx = new();
env = new(gdmbx, msmbx);
env.vif = vif;
env.run();
#200;
$finish;
end
 
endmodule
 
