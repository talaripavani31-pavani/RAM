`timescale 1ns/1ps

module ram_tb;

reg clk;
reg we;
reg [3:0] addr;
reg [7:0] data_in;

wire [7:0] data_out;


// RAM Instance
ram uut(
    .clk(clk),
    .we(we),
    .addr(addr),
    .data_in(data_in),
    .data_out(data_out)
);


// Clock Generation
always #5 clk = ~clk;


initial
begin

    $dumpfile("ram.vcd");
    $dumpvars(0, ram_tb);


    clk = 0;
    we = 0;
    addr = 0;
    data_in = 0;


    // Write Data

    #10;
    we = 1;
    addr = 4'b0001;
    data_in = 8'hAA;


    #10;
    addr = 4'b0010;
    data_in = 8'h55;


    #10;
    addr = 4'b0011;
    data_in = 8'hFF;


    // Read Data

    #10;
    we = 0;
    addr = 4'b0001;


    #10;
    addr = 4'b0010;


    #10;
    addr = 4'b0011;


    #20;

    $finish;

end


initial
begin
    $monitor("Time=%0t WE=%b Address=%b Data_In=%h Data_Out=%h",
              $time,we,addr,data_in,data_out);
end


endmodule