function [L,U] = LUfactor(A,n)
%LUfactor Factors A and outputs (L)ower and (U)pper triangular matrices
%   This function takes a n by n matrix (A) and LU factorizes it in
%   order to get a an upper triangular matrix (U). It then gets the lower
%   triangular matrix (L) from the equation L = A/U. Both are L and U are then
%   outputted.
U = A;
for i = 2:n
    for j = 1:(i-1)
            U(i,j:n) = U(i,j:n) - ((U((i-(i-j)),(j:n)))*(U(i,j)/U((i-(i-j)),j)));
    end
end
L = A/U;
end