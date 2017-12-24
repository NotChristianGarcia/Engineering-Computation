clear;clc;close all;
% termination tolerance and inital guess
tol = 10e-3;
x0 = -2;
% maximum number of allowed iterations
maxiter = 1000;
% step size ( 0.33 causes instability, 0.2 quite accurate)
alpha = 0.01;
% initialize gradient norm, optimization vector, iteration counter, perturbation
 x = x0; niter = 0; %dx = inf;
 gnorm=inf;
 dx=inf;
% define the functions:
%%%%%%%%%%%%%%%%%%%f(x)
%%%%%%%%%%%%%%%%%%%grad(x)
function f = x
    f = x^4+2*x^3+8*x^2+5*x;
end
z=[];
yy=[];

% plot objective function contours for visualization:
for y = -2:0.1:2
    yy = [yy y];
    z = [z f(y)];
end
figure
plot(yy,z);
hold on;
xk=zeros(2,1);
% gradient descent algorithm:
while(1)
   % take step:
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%xnew = 
    % check step
    if ~isfinite(xnew)
        display(['Number of iterations: ' num2str(niter)])
        error('x is inf or NaN')
    end
%     plot current point
    plot(xnew,f(xnew),'ko-');
    % update termination metrics
    niter = niter + 1;
    xk(niter)=xnew;
    fk(niter)=f(xnew);
    dx = norm(xnew-x)/norm(x);
    if(dx<tol||niter>maxiter)
        break;
    end
    x = xnew;
end