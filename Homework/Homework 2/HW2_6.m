A = [1,-1,1;1,1,1;25,5,1]; % Setting matrix A up
n = length(A); % Getting the dimensions of square matrix A
B = [29;4;56]; % Setting matrix B up
[L,U] = LUfactor(A,n); % Getting L and U of matrix A
% Forward substitution
d(1) = (B(1)); % Solving for d1
d(2) = (B(2) - ((L(2,1))*(d(1)))); % Solving for d2
d(3) = (B(3) - ((L(3,1))*(d(1))) - ((L(3,2))*(d(2)))); % Solving for d3
% Back substitution
c(3) = (d(3)/U(3,3)); % Solving for c3
c(2) = ((d(2) - (U(2,3)*c(3)))/(U(2,2))); % Solving for c2
c(1) = ((d(1) - (U(1,3)*c(3)) - (U(1,2)*c(2)))/(U(1,1))); % Solving for c1
fprintf('C1 is %d\nC2 is %d.\nC3 is %d\n',c(1),c(2),c(3)) % Displaying c1,c2,&c3