x = .5; % Setting x = .5
h = .1; % Setting stepsize = .1
methodh1 = ((((1/(sqrt(2*pi)))*exp(((-(x+h)).^2)/2)) - ((1/(sqrt(2*pi)))*exp(((-(x)).^2)/2)))/h); % Solving for given method O(h)
methodh2 = ((((1/(sqrt(2*pi)))*exp(((-(x+h)).^2)/2)) - ((1/(sqrt(2*pi)))*exp(((-(x-h)).^2)/2)))/(2*h)); % Solving for given method O(h^2)
fprintf('O(h) method resulted in %d.\nO(h^2) method resulted in %d.\n',methodh1,methodh2) % Displaying results of both methods