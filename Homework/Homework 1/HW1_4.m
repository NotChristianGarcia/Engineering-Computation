usernumber = 0; % Initializing usernumber, the number the user will input
sum = 0; % Initializing sum, the summation of inputted numbers

while usernumber ~= -999 % Loop that stops when input is "-999."
   sum = sum + usernumber; % Adds newly inputted number to previous sum.
   usernumber = input('Enter a number to be summed: '); % Ask to input a new number.
end

fprintf('The sum reached %.3f before you ended the operation.\n',sum); % Prints a cute statement.