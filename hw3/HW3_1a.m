n = input('What is the size of this matrix?(nxn) ');
for col = 1:n % Loops for each col needed
    for row = 1:n % Loops for each row needed
        fprintf('Value for A(%d,%d): ',col,row); % Print statement asking for value of each position
        inputvalue = input(''); % Input is here because you can't do things fprintf can
        A(col,row) = inputvalue; % Sets all values up in the matrix
    end
end
[L,U] = LUfactor(A,n); % Getting L and U of matrix A
for k = 1:n
    B = zeros(1,n);
    B(k) = 1;
    % Forward substitution
    d(1) = (B(1)); % Solving for d1
    d(2) = (B(2) - ((L(2,1))*(d(1)))); % Solving for d2
    d(3) = (B(3) - ((L(3,1))*(d(1))) - ((L(3,2))*(d(2)))); % Solving for d3
    % Back substitution
    c(3) = (d(3)/U(3,3)); % Solving for c3
    c(2) = ((d(2) - (U(2,3)*c(3)))/(U(2,2))); % Solving for c2
    c(1) = ((d(1) - (U(1,3)*c(3)) - (U(1,2)*c(2)))/(U(1,1))); % Solving for c1
    InverseA(:,k) = c;
end

InverseA