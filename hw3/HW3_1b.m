load HW3.mat
n = input('What is the size of this matrix?(nxn) ');
for col = 1:n % Loops for each col needed
    for row = 1:n % Loops for each row needed
        fprintf('Value for A(%d,%d): ',col,row); % Print statement asking for value of each position
        inputvalue = input(''); % Input is here because you can't do things fprintf can
        A(col,row) = inputvalue; % Sets all values up in the matrix
    end
end

[L,U] = LUfactor(A,n); % Getting L and U of matrix A
for k = 1:101
    B = y(:,k);
    % Forward substitution
    d(1) = (B(1)); % Solving for d1
    d(2) = (B(2) - ((L(2,1))*(d(1)))); % Solving for d2
    d(3) = (B(3) - ((L(3,1))*(d(1))) - ((L(3,2))*(d(2)))); % Solving for d3
    % Back substitution
    c(3) = (d(3)/U(3,3)); % Solving for c3
    c(2) = ((d(2) - (U(2,3)*c(3)))/(U(2,2))); % Solving for c2
    c(1) = ((d(1) - (U(1,3)*c(3)) - (U(1,2)*c(2)))/(U(1,1))); % Solving for c1
    answers(:,k) = c;
end

figure % Creates a figure
hold on % Not sure, won't graph both plots on figure without this though.
t = 1:101; % Creates t with 100 numbers between 0 and 2pi.
plot(t,answers(1,t),'DisplayName','x_{1}(t)') % Plots t versus the Func1 & changes name.
plot(t,answers(2,t),'DisplayName','x_{2}(t)') % Plots t versus the Func2 & changes name.
plot(t,answers(3,t),'DisplayName','x_{3}(t)') % Plots t versus the Func2 & changes name.
legend(gca,'show') % Creates a legend for graph.
title('Trajectory of x(t)') % Giving a cool title.
xlabel('Time (s * 10^{-1})'), xlim([0,101]) % Creates a label on the x axis and limits x axis.
ylabel('x(t)'), ylim([-20,101]) % Creates a label on the x axis and limits x axis.