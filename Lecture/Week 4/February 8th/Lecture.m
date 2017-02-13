%{
Homework 2.2 is pen and pencil
Gaussian Elimination
    You need n^3 for everything
LU
    You need both n^3 & n^2
Matrix Inverse
    ax = b => x = (b/a)
        however you can also write as  x = a^(-1)*b
    Ax = b, but now Ax is (nxn matrix) and b is (nx1)
        so, x = A^(-1)*b
    Definition
        When A(n,n) is called LEFT inverse of A <=> AxB = I
        When B(n,n) is called RIGHT inverse of A <=> AxB = I
    A matrix may not have either LEFT or RIGHT inverse
        When left and right inverses exist, then they are the same
How to compute the right inverse?
    C(n,n) = A(n,n) x B(n,n) = I = [1 0 ...; 0 1 ...; 0 0 1 ...; ...; ... 0 1]
    C(:,1) = A x B(:,1)
    Trying to get C(:,i) = [1;0;0;0;0;0;0;...] and C(i,i) = [0;0;0;1;0;0;0;...]
    Ax = b where x = B(:,1) and B = end matrix
    Use LU factorization
        A*xi = bi    xi = B(:,i) bi = (I:,i)
        give L x U = A
            L x UxXi = bi
                xi = U\(L\bi)
                    Where x = A\b which is the same as A^(-1)b or inv(A)b

}%