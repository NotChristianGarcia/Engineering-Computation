figure;
h = 0:.01:1;
x = (pi/2);
E1 = abs((sin(x+h)) - (sin(x)));
E2 = abs((sin(x+h)) - (sin(x)) - (cos(x)*h));
E3 = abs((sin(x+h)) - (sin(x)) - (cos(x)*h) + (sin(x)*(h.^2)*.5));
loglog(h,E1); hold on;
loglog(h,E2);
loglog(h,E3); hold off;