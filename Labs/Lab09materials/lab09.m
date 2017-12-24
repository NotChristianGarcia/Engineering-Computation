% LAB #9: Non-linear Regression
%
% WRITE three functions
%   - ComputeResidual_ex1
%   - ComputeGrad_ex1
%   - GradDescent_ex1
%
clear all;
close all;

%% 1. PLOT DATA SET

% nonlinear function
% y = a0 * x * exp(a1 * x)


%DATA SET
xi = [0.1, 0.2, 0.4, 0.6, 0.9, 1.3, 1.5, 1.7, 1.8];
yi = [0.75, 1.25, 1.45, 1.25, 0.85, 0.55, 0.35, 0.28, 0.18];

plot(xi,yi,'*');



%% 2. DEFINE RESIDUAL FUNCTION
% residual = r = yi - y
% y = a0 * x * exp(a1 * x)
%
% test_a = [1,2]  
% test_res = [...
%     0.6279
%     0.9516
%     0.5598
%    -0.7421
%    -4.5947
%   -16.9529
%   -29.7783
%   -50.6590
%   -65.6968];
%
test_a = [1,2];
test_res = ComputeResidual_ex1(test_a);



%% 3. REGRESSION USING Built-in FUNTION: Least square curve fitting

acoef0 = [5 -3];
[acoef_lsq] = lsqnonlin(@ComputeResidual_ex1, acoef0);
acoef = acoef_lsq;

x = linspace(0.1,1.8,100);
y = acoef(1) * x .* exp( acoef(2) * x );
plot(xi,yi,'*',x,y,'k--');



%% 4. DEFINE GRADIENT FUNCTION
% dSr_a1
% dSr_a2
%
% test_a = [0,3] => grad = [-501.5890, 0]

test_a = [0,3];
test_grad = ComputeGrad_ex1(test_a);




%% 5. COMPLETE GRADIENT DESCENT FUNCTION with FIXED Alpha
adaptive_alpha_mode = 0;
[acoef_grad,niter,dx] = GradDescent_ex1(acoef0,adaptive_alpha_mode);
acoef = acoef_grad;


x = linspace(0.1,1.8,100);
y = acoef(1) * x .* exp( acoef(2) * x );
plot(xi,yi,'*',x,y,'k--');

 


%% 6. COMPLETE GRADIENT DESCENT FUNCTION with adaptive Alpha
adaptive_alpha_mode = 1;
[acoef_grad,niter,dx] = GradDescent_ex1(acoef0,adaptive_alpha_mode);
acoef = acoef_grad;

x = linspace(0.1,1.8,100);
y = acoef(1) * x .* exp( acoef(2) * x );
plot(xi,yi,'*',x,y,'k--');

 
