x = .5;
h = .1;
methodh1 = ((((1/(sqrt(2*pi)))*exp(((-(x+h)).^2)/2)) - ((1/(sqrt(2*pi)))*exp(((-(x)).^2)/2)))/h);
methodh2 = ((((1/(sqrt(2*pi)))*exp(((-(x+h)).^2)/2)) - ((1/(sqrt(2*pi)))*exp(((-(x-h)).^2)/2)))/(2*h));