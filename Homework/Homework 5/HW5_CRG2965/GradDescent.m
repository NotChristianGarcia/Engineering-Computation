X(1) = 1;
F = X.^4 + 2*X.^3 + 8*X.^2 + 5*X;
max_int = 1000;
err = 100;
nint = 0;
while err > 10^(-3)
    for J = 1:max_int
    X(J+1) = X(J) + (-gradient(F,X(J)));
    nint = nint + 1;
    end
err = sqrt(X(J+1)-X(J))/sqrt(X(J));
end
plot(F,X);