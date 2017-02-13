function [v] = Velocity_Rocket(t)
%Velocity of Rocket This function takes time and gives you the velocity of a rocket.
%   time (t) is the input and goes through an ifelse statement that allows the
%   piecewise function to work properly for whatever t is. Velocity is then calculated
%   and becomes the output of the function.

if 0 <= t & t <= 8
    v = 10*t^2 - 5*t;
elseif 8 < t & t <= 16
    v = 624 - 54*t;
elseif 16 < t & t <= 26
    v = 36*t + 12*(t-16)^2;
elseif 26 < t
    v = 2136*exp(-.1*(t-26));
else
    v = 0;
end
end

