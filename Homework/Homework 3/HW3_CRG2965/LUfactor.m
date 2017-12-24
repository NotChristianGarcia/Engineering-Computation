function [L,U] = LUfactor(A,n)
%LUfactor Factors A and outputs (L)ower and (U)pper triangular matrices
%   This function takes a n by n matrix (A) and LU factorizes it in
%   order to get a an upper triangular matrix (U). It then gets the lower
%   triangular matrix (L) from the equation L = A/U. Both are L and U are then
%   outputted.
U = A; % Sets Upper = A, just initially
for i = 2:n % Goes through row 2 till end
    for j = 1:(i-1) % Goes through col 1 through (i-1), which is the cols which should have 0's
            U(i,j:n) = U(i,j:n) - ((U((i-(i-j)),(j:n)))*(U(i,j)/U((i-(i-j)),j))); % Solves for 0's where they should be; isn't it a lovely equation?
    end
end
L = A/U; % Solves for Lower Triangular from A and the Upper Triangular that we solved for
end