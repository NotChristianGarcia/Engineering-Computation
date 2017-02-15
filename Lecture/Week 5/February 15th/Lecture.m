%{
Jacobi iteration
    [x1^1,x2^1,...xn^1]
    kth jacobi iteration
        [x1^k,x2^k,...xn^k]
    x2^1 = (1/a22)(b2 - sigma(i = 1 to n) a2^i * xi^0)
Gauss-Seidel
    x2^1 = (1/a22)(b2 - a21*x11 + sigma(i = 3 to n) a2^i * xi^0)
General stuff
    xj^1 = (1/aji)(bj - sigma(i = j to n) aj^i * xi^0)
    xj^1 = (1/aji)(bj - (sigma(i = (j-1) to n) aj^i * xi^0) - (sigma(l = (j+1) to n) al^i * xl^0))
More general
    xj^k = (1/aji)(bj - (sigma(i = (j-1) to n) aj^i * xi^k) - (sigma(l = (j+1) to n) al^i * xl^(k-1)))

Remember we're interating (Increasing k) until we are satisfied with the approximate solution
    x^k wavy= x^*
    To get the distance between both of these vectors then you're going to find the magnitude x-y
The normal (magnitude) of x is defined by
    ||x|| = sqrt(sigma(1 -> n) xi^2)
        From this we can get the distance between two vectors, x & y with n components
    ||x - y|| = sqrt(sigma(1 -> n) (xi - yi)^2)
Psuedo Code for Jacobi & G/Seidel
    x^1 = [x1^1,x2^1,...xn^1]
        k = 2 We're given E
    while 1
        for j = 1,n
        xj^k = (1/aji)(bj - (sigma(i = (j-1) to n) aj^i * xi^k))
    end for 
        if ||x^k-y^(k-1)|| < E
    break;
    k = k+1;
    end ij
    end while
You can also just use norm(x^k - x^(k-1))
We want to find error with exact solution, but we don't know it, so we compare to last number until error b/w is small, it's a limit
%}