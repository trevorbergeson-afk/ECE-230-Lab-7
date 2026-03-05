module twos_compliment(
    input [7:0] A,          
    output [7:0] Y              
);
    
    wire w[7:0];
    
    full_adder zero (
        .A(~A[0]),
        .B(1'b0),
        .Y(Y[0]),
        .Cin(1'b1),          
        .Cout(w[0])    
    );
    
    full_adder one (
        .A(~A[1]),
        .B(1'b0),
        .Y(Y[1]),
        .Cin(w[0]),          
        .Cout(w[1])    
    );
    
    full_adder two (
        .A(~A[2]),
        .B(1'b0),
        .Y(Y[2]),
        .Cin(w[1]),          
        .Cout(w[2])    
    );
    
    full_adder three (
        .A(~A[3]),
        .B(1'b0),
        .Y(Y[3]),
        .Cin(w[2]),          
        .Cout(w[3])    
    );
    
    full_adder four (
        .A(~A[4]),
        .B(1'b0),
        .Y(Y[4]),
        .Cin(w[3]),          
        .Cout(w[4])    
    );
    
    full_adder five (
        .A(~A[5]),
        .B(1'b0),
        .Y(Y[5]),
        .Cin(w[4]),          
        .Cout(w[5])    
    );
    
    full_adder six (
        .A(~A[6]),
        .B(1'b0),
        .Y(Y[6]),
        .Cin(w[5]),          
        .Cout(w[6])    
    );
    
    full_adder seven (
        .A(~A[7]),
        .B(1'b0),
        .Y(Y[7]),
        .Cin(w[6]),          
        .Cout(w[7])    
    );
   
endmodule