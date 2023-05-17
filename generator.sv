class generator;
transaction t;
mailbox mbx;
event done;
integer i;
 
function new(mailbox mbx);
this.mbx = mbx;
endfunction
 
task run();
t = new();
for(i =0; i< 20; i++) begin
t.randomize();
mbx.put(t);
$display("[GEN]: Data send to driver");
@(done);
#10;
end
endtask
endclass
