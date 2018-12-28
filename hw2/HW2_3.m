figure; % Creates a figure so all plots are on it
h = 0:.01:1; % Initializes the stepsize of .01 from 1 to 1
x = (pi/2); % Sets x equal to pi/2
E1 = abs((sin(x+h)) - (sin(x))); % Absolute error approximation with 1 term
E2 = abs((sin(x+h)) - (sin(x)) - (cos(x)*h)); % Absolute error approximation with 2 term
E3 = abs((sin(x+h)) - (sin(x)) - (cos(x)*h) + (sin(x)*(h.^2)*.5)); % Absolute error approximation with 3 term
loglog(h,E1); hold on; % Plots E1 and leaves graph open
loglog(h,E2); % Plots E2 on same graph as E1
loglog(h,E3); hold off; % Plots E3 on same graph as E1 & E2 and closes graph
title('Absolute Errors in Different Term Approximations') % Adds title
legend('One term','Two terms','Three terms');ylabel('Absolute Error');xlabel('Stepsize (h)') % Legend & x/ylabels