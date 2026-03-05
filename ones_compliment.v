module ones_compliment(
    input [7:0] A,
    input [7:0] B,         
    output [3:0] Y     
                       
);
    
    wire w [7:0];
    wire y [3:0];
    
    full_adder zeroA(
        .A(A[0]),
        .B(B[0]),
        .Y(y[0]), // ask about this
        .Cin(1'b0),          
        .Cout(w[0])                          
    );
    
    full_adder oneA(
        .A(A[1]),
        .B(B[1]),
        .Y(y[1]),
        .Cin(w[0]),          
        .Cout(w[1])    
    );
    
    full_adder twoA (
        .A(A[2]),
        .B(B[2]),
        .Y(y[2]),
        .Cin(w[1]),          
        .Cout(w[2])
    );
    
    full_adder threeA (
        .A(A[3]),
        .B(B[3]),
        .Y(y[3]),
        .Cin(w[2]),          
        .Cout(w[3])
    );
    
    full_adder zeroB (
        .A(y[0]),
        .B(1'b0),
        .Y(Y[0]),
        .Cin(w[3]),          
        .Cout(w[4])
    );
    
    full_adder oneB (
        .A(y[1]),
        .B(1'b0),
        .Y(Y[1]),
        .Cin(w[4]),          
        .Cout(w[5])
    );
    
    full_adder twoB (
        .A(y[2]),
        .B(1'b0),
        .Y(Y[2]),
        .Cin(w[5]),          
        .Cout(w[6])
    );
    
    full_adder threeB (
        .A(y[3]),
        .B(1'b0),
        .Y(Y[3]),
        .Cin(w[6]),          
        .Cout(w[7])
    );
    
endmodule