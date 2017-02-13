%{
[2, -3, 6; 4, 6, 7; 0, 2, 3]*[x1; x2; x3] = [5; -3; 8]
Gaussian Ideas
    Convert a system to an upper triangular system so we can solve matrix with one sweep from bottom to top.
    0th. Create an augmented matrix yo'                                      Upper triangular matrix created [ 2 -3    6 |    5
    1st. A2 - ((A1 / A11) * (A21)) [Row 1 = A1; Row 2 = A2; etc.]                                              0 12   -5 |  -13
    2nd. Do this for A21, A31, and A32 (Make it upper triangular). For A32 it's, A3 - ((A2 / A22) * (A32))     0  0 23/6 | 61/6]
    3rd. Do one sweep of backward substitutions.
        Sidenote: A21/A11 or A32/A22 or A31/A11 are called factors.
    You get three factors, put them where they were used in a new matrix (L), creating a lower triangular matrix with 1's down diag.
    It turns out that A(orig. Matrix) = L(Lower Matrix) x U(Upper matrix).
        This is called the LU factorization of a matrix.
        Step from full matrix to U is called Gaussian Elimination
    Partial Pivoting
                3(x2) = 1
        4(x1) + 8(x2) = 2
            Matrix w/ 0 in top left. Just switch rows matey.
%}