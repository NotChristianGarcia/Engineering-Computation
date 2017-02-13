%{
Cancellation Error
1/(sqrt(x^2 + 1) - x)
if x is large
x^2+1 = x
%}
x = 0;
1 / (sqrt(x^2 + 1) - x);

%{
Truncation Error
    1/(cos^2(X)-sin^2(X) = 1/0
    solve, make it into 1/(cos(2x)
    Will cut off numbers because computers can only store computer values,
    not showing the entire value we would expect.
%}
x = 0;
1 / (cos(2x));