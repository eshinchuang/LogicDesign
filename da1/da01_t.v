`timescale 1ns / 100ps
module da01_t;
    reg [3 : 0] count;
    wire [1 : 0] out;
    da01 m(count[3], count[2], count[1], count[0], out[1]. out[0]);
    initial begin
        $fsdbDumpfile("da01.fsdb");
        $fsdbDumpvars;
    end
    initial begin
        count = 4'b0000;
        repeat (16) begin  
            #100
            $display("in = %b, out = %b", count , out);
            count = count + 4'b0001;
        end
    end
endmodule