function [distance] = Distance_Between_Points(point1,point2)
%DISTANCE_BETWEEN_POINTS Function finds the difference between any two points in 3-space.
%   The functions gets the two points that the distance between should be calculated for,
%   by using the distance equation for points in 3-space we get a distance which ends
%   up being the output of the function.

distance = sqrt((point1(1)-point2(1))^2 + (point1(2)-point2(2))^2 + (point1(3)-point2(3))^2); % distance is set equal to the distance equation for points in 3-space.
end

