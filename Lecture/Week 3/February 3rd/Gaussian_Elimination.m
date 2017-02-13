%{
Gaussian Elimination in 2 steps
    First it's forward eliminiation, getting ready to destroy bottom triangle
        Also partial pivoting to get rid of 0's in the diag
    Second, backward elimination
        
%}
% x = solution
% Partial Pivoting
A = [0,2,3,8;5,6,7,3;2,-3,6,5];
% Aug = [A b]; would be concating the original matrix and stuff on the right, but I already did that in A.
[jack, maxpos] max(abs(Aug(k:n,k)));

% n=row
% Backward Substitution
x = zeros(n,1);
x(n) = Aug(n,nb)/Aug(n,n);
for i = n-1:-1:1
    x(i) = (Aug(i,nb) -Aug(i,i+1:n)*x(i+1:n))/Aug(i,i);
end
% Get lower triangular matrix

[m,n] = size(A);
if m~=n, error('Matrix A must be a square'); end
nb = n+1;
Aug = [A b];
for k = 1:n-1
    for i = k+1:n
        factor = Aug(i,k)/Aug(k,k)