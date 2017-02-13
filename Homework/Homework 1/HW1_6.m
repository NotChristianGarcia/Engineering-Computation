figure('Position', [100, 100, 1366, 768],'Name','Fig'); % Creating figure, setting size, and titling.

subplot(1,2,1) % Creating subplot on left of figure.
fsurf(@(x,y) (cos(3.*x)).*(sin(2.*y)).*(exp(-.5.*(((x-pi).^2) +...
    ((y-pi).^2)))), [0 2*pi 0 2*pi]) % Creates a plot of the function giving & give x & y limits. 
colorbar,xlabel('x'),ylabel('y'),zlabel('f(x,y)') % Creates colorbar & sets x/y/z labels.

subplot(1,2,2) % Creates subplot on right of figure.
x = 0:(pi/50):(2*pi); % Creates bounds for x.
y = x; % Creates bounds for y (which are the same as x).
[X,Y] = meshgrid(x,y);
Z = (cos(3.*X)).*(sin(2.*Y)).*(exp(-.5.*(((X-pi).^2)...
    + ((Y-pi).^2)))); % Sets z to be the function given.
contour(X,Y,Z,10,'ShowText','on') % Creates contour with text on the graph.
xlabel('x'),ylabel('y') % Creates labels on x and y axis.