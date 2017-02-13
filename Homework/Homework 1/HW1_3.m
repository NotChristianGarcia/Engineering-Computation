warning('off','all') % Turning off a warning about element-wise operators as it seems to break the code when I try to use all element-wise operators.
x = -5:0.1:50; % Setting up the range of time from -5 to 50 with an increment of 0.1
fplot(@(x) Velocity_Rocket(x)) % Plotting the function of Velocity with respect to t (which is x here).
axis([-5 50 0 2200]) % Limiting x and y axis numbering, cause it looks better.
xlabel('Time'), ylabel('Velocity') % Setting up labels for x and y axis.
title('Rocket Velocity Over Time') % Giving a cool title.
