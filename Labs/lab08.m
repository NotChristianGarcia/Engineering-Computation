
xi = [0.1, 0.2, 0.4, 0.6, 0.9, 1.3, 1.5, 1.7, 1.8];
yi = [0.75, 1.25, 1.45, 1.25, 0.85, 0.55, 0.35, 0.28, 0.18];

plot(xi,yi,'*'); hold on;
%%%We are going to do arbitrary order polynomial regression on the data set
% above. For finding the coefficients we are going to solve the system 
% A*coeff = b where A is a matrix and coeff and b are vectors

%%%Enter the number of coefficients for the regression you want
ncoeffs = 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%Fill matrix A and vector b with appropriate sizes
A=zeros(,);
b=zeros(,);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%Fill in the matrix A and vector b with appropriate terms
% here. You need two for loops here



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Calculate the vector coeff by solving the linear system A*coeff=b

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = linspace(min(xi),max(xi),100);

%%%%%%Assign appropriate size for y here%%%%%%%%
y = zeros(size(x));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Calculate the regression fit using coeff and x


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%Plot the regression fit here on top of the original data

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


