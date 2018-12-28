figure % Creates a figure
hold on % Not sure, won't graph both plots on figure without this though.
t = linspace(0,2.*pi); % Creates t with 100 numbers between 0 and 2pi.
plot(t,func1(t),'DisplayName','sin(t)sin(3t)') % Plots t versus the Func1 & changes name.
plot(t,func2(t),'DisplayName','cos(t)sin(6t)') % Plots t versus the Func2 & changes name.
legend(gca,'show') % Creates a legend for graph.
xlabel('t'), xlim([0,2*pi]) % Creates a label on the x axis and limits x axis.
