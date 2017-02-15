x = .5; % Setting x = .5
s = [10^(-12),10^(-10),10^(-8),10^(-6),10^(-4),10^(-2)]; % Creating the different stepsizes in an array
for k = 1:length(s) % Moving k through all stepsizes
     h = s(k); % Initializing the working stepsize for each stepsize in matrix
     stepsize(k) = ((((1/(sqrt(2*pi)))*exp(((-(x+h)).^2)/2)) - ((1/(sqrt(2*pi)))*exp(((-(x)).^2)/2)))/h); % Solving for each stepsize and throwing data in a matrix
end
for j = 1:length(stepsize) % Going through every result from the previous loop
     fprintf('For stepsize %d the result was %d.\n',s(j),stepsize(j)) % Displaying stepsize with the result it had
end