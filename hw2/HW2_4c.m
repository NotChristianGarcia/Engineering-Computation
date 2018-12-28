x = .5; % Setting x = .5
trueval = ((1/(sqrt(2*pi)))*(-x)*exp(((-(x))^2)/2)); % Solving for the truevalue of the function
bvalues = [0.225985896662451,0.226030305583436,0.226030416605738,0.226030696492963,0.226058668976181,0.228868123709547]; % Bringing in solved values from 2_4b without using Global variables
s = [10^(-12),10^(-10),10^(-8),10^(-6),10^(-4),10^(-2)]; % Bringing in stepsizes from 2_4b without using Global variables
for l = 1:length(bvalues) % Going through each point of data from the 2_4b solutions
    error(l) = abs(bvalues(l) - trueval); % Solving for error and placing data in matrix error()
end
plot(s,error) % Plotting calculated error compared to the stepsizes given (h = s)
title('Errors versus the stepsize') % Adds title
ylabel('Error');xlabel('Stepsize (h)') % x & y labels