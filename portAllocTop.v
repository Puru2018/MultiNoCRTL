`include "global.v"

module portAllocTop ( 
   req, alloc, remain
);

input    [`WIDTH_PV-1:0]       req;
output   [`NUM_PORT-1:0]       alloc, remain;

highestBit allocProdPort ({1'b0,req}, alloc);

assign remain = ~alloc;

endmodule