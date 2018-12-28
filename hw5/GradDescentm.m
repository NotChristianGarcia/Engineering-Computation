clear;clc;close all;
% termination tolerance
tol = 1e-3;
x = [3]';
y = [3]';
% maximum number of allowed iterations
maxiter = 1000;
% minimum allowed perturbation
dxmin = 1e-6;
% step size ( 0.33 causes instability, 0.2 quite accurate)
alpha = 0.1;
% initialize gradient norm, optimization vector, iteration counter, perturbation
gnorm = inf; x = x; niter = 0; dx = inf;
% define function and grad functions:
f(x,y) = x.^2-x*y+y.^2-8*x-4*y+25;
grad(x) = gradient(f,x);

% plot objective function contours for visualization:
[xx,yy] = meshgrid(-4:0.1:4);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%f(x)
figure
surf(xx,yy,z)
hold on



xk=zeros(2,1);
yk=zeros(2,1);
% gradient descent algorithm:
while (dx > tol)
    
    % take step:
    %%%%%%%%%%%%%%xnew = 
    % check step
    if ~isfinite(xnew)
        display(['Number of iterations: ' num2str(niter)])
        error('x is inf or NaN')
    end
    
    % plot current point
    plot3([x(1) xnew(1)],[x(2) xnew(2)],[f(x(1),x(2)) f(xnew(1),xnew(2))],'ro-')
    refresh
    
    % update termination metrics
    niter = niter + 1;
    xk(niter)=xnew(1);
    yk(niter)=xnew(2);
    dx = norm(xnew-x)/norm(x)
    x = xnew;
    
    
end
xnew
niter
