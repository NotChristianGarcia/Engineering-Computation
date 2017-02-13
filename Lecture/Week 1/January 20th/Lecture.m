%{
Schematic of numerical methods. Graphing.
Solve a problem → Impossible, do it by computer (that’s what we do) → write on computer → execute and get them solutions.
So what we need to do is understand how computers store numbers and shit, less we be stupid.
Binary shit
We use base 10, not possible for computers. We use base 2 , computers made of diodes, on or off.
Computers just use 0’s & 1’s, so base 2 bitch.
Woah, we put in decimal and computers read binary!

IEEE Double Precision numbers
Computers can only store so much of our shit
64-bit, computers understand numbers as
    n = +- (1 + j) x 2^e 
    +- = 1 bit
    j (Mantissa) = 52 bits
        j = ------------------------------------------etc.
            52 num in j, all being either 0 or 1
    e = 11 bits
        e = -----------
            11 num in e, all being either 0 or 1
    the (1 + j) is called the "significant"
        Largest number would be 1 + largest j (meaning 1 in every case, not 0's)
            Solving the j would be ((1-(1/2)^53)/(1-(1/2)) = #
    64 bits total
%}