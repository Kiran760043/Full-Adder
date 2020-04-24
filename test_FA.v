//////////////////////////////////////////////////////////////////////////////////
// Design: Test bench for Full Adder
// Engineer: kiran
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps


module test_FA();
// inputs to the DUT
    reg A;
    reg B;
    reg Ci;
// outputs from the DUT
    wire S;
    wire Co;

full_adder DUT ( .A(A), .B(B), .Ci(Ci), .S(S), .Co(Co) );

initial
    begin
        $display($time, " << Simulation Results >>");
        $monitor($time, "A = %b, B = %b, Ci = %b, S = %b, Co = %b", A, B, Ci, S, Co);
    end

always
    begin
        A   = 0;
        B   = 0;
        Ci  = 0;
        #2;
        A   = 0;
        B   = 0;
        Ci  = 1;
        #2;

        A   = 0;
        B   = 1;
        Ci  = 0;
        #2;
        A   = 0;
        B   = 1;
        Ci  = 1;
        #2;

        A   = 1;
        B   = 0;
        Ci  = 0;
        #2;
        A   = 1;
        B   = 0;
        Ci  = 1;
        #2;

        A   = 1;
        B   = 1;
        Ci  = 0;
        #2;
        A   = 1;
        B   = 1;
        Ci  = 1;
        #2;


        $finish;

    end
endmodule
