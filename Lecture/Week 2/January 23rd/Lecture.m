%{
Explaining more IEEE Floating Point Numbers
    n= +- (1 + j) + v^e
        j = 52 bits
        Significant is 1 + j
            Largest significant is
                1 + [sigma(1 to 52) (1/2)^n] = ((1-(1/2)^52)/(1-1/2)) = 2 - 2^(-52)
            Smallest significant is
                1 + 0 = 1
        e = 11 bits (One is saved for +- however, so e has 10)
            Largest exponent
                [sigma(1 to 10) 2^n] = 2^10 + 1 = 1023
            Smallest exponent
                Computer actually reserves the smallest numbers, meaning the smallest exponent is actually -1022
        Everything
            Largest floating point number
                1.7977 x 10^(308)
            Smallest floating point number
                -1.7977 x 10^(308) (That exponent part is like, really fucking small)
    Machine Zero
        Smallest number (nonzero) that MATLAB can store
        Denoted as eps (epsilon - something small)
            eps = (truth values - computer values)/(truth) = relative error
            2^(-52) = 2.2204 x 10^(-16)
            Relative difference that you can store in a computer, so numbers can only be 2.2204 x 10^(-16) numbers close.
            .00~001 & .00~0012 would be the same. Computer can only store so much information yo'.
        In code
            You can't always say t == 12, could be off by a number 16 digits down the line.
            Use If |t-12|/12 < 10^(-13)
        Example
            You want to store something in the computer, like 3, however the computer stores a computer value instead.
        Computer can only store finite numbers, and there's always a relative gap between any two consectutive numbers.
%}