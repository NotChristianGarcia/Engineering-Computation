A = full(gallery('tridiag',100,-1,20,-1));
B = full(gallery('tridiag',100,-1,2.1,-1));
b = ones(1,100);

GanswerX = GaussSeidel(A,b,.0001);
GanswerY = GaussSeidel(B,b,.0001);
JanswerX = Jacobi(A,b,.0001);
JanswerY = Jacobi(B,b,.0001);

