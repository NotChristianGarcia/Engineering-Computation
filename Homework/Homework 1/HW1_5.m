words = {'first','X','Y','Z';'second','X','Y','Z'}; % Initializes a cell array of words I can use in print statements

for point = 1:2 % Loops for each point needed.
    for direction = 1:3 % Loops for each direction needed, x, y, and z.
        fprintf('%s coordinate of the %s point: ',words{point,direction+1},words{point,1}); % Print statement asking for direction of each point.
        inputvalue = input(''); % Input is here because you can do cool fprintf things with it.
        coordinates(point,direction) = inputvalue; % Sets all point coordinates here.
    end
end

distance = Distance_Between_Points(coordinates(1,1:3),coordinates(2,1:3)); % Hands off coordinates to function, receive distance between points.
fprintf('The distance between points (%.1f,%.1f,%.1f) and (%.1f,%.1f,%.1f) is %.4f\n',...
    coordinates(1,1),coordinates(1,2),coordinates(1,3),coordinates(2,1),coordinates(2,2),coordinates(2,3),distance); % Nice looking print statement.