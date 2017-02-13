%{
Questions and Answers
    How to submit homework?
        Type up everything yo, put it into a .pdf
Matrices cont. (Anm)
    n = 1: column vector
    n = m: square matrix
    n ~= m: rectangular matrix
    Anm has a diagonal, it's always from top left to bottom right values
        Main diagonal is just going down, A11, A22, A33, A44, ANN.
    Ann where only the main diagonal has non-zero terms: diagonal matrix
        If A is diagonal, then Aij = 0 for i ~= j
    Diagonal square matrix with values on top of the diagonal is called a upper triangular matrix
        Ann is called upper triangular <=> Aij = 0 for all i>j
        There's also a lower triangular matrix, same, with values below diagonal instead of above
            A is lower tri-matrix <=> Aij = 0 for all i<j
    A33 = [A11,8,2;8,A22,-4;2,-4,A33] is a symmetric matrix, if you flip on diagonal or between i and j the matrix remains the same.
        Ann is symmetric <=> Aij = Aji for all i ~= j
    Matrix Operations
        For equal sized matrices
            Add respective spots
            Subtract respective spots
        Doesn't matter
            Scalar multiplication, easy boi
        For Anm & Bmp matrices (row = col when A*B)
            Multiply the (i) row of Anm by (j) col of Bmp -> Anm * Bmp = Cnp
            Cij = Aik1*Bkj1 + Aik2*Bkj2 + etc. = sigma(1->k) aik*bkj = row vector dot col vector
Gaussian Eliminations
    Next time yo'
%}

