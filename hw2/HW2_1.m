e = 1; % Sets epsilon equal to 1
while (1 + e) > 1 % This loops runs as long as (1 + e) is greater than 1
    e = (e/2); % if (1 + e) > 1 then e divided by 2
end
e = 2 * e; % When (1 + e) <= 1 the loop stops and e is multipled by 2

fprintf('My program result is %d.\nThe eps function result is %d.\n',e,eps) % Displaying results of real eps and my function