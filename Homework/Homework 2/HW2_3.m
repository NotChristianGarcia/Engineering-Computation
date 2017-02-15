x = .5*pi;
for h = 0:.01:1
    for k = 1:length(h)
        term1(k) = sin(x) + h;
        err1(k) = abs(term1(k) - sin(x));
        term2(k) = sin(x) + cos(x)*h + h^2;
        term3(k) = sin(x) - sin(x)*h^2*.5 + h^3;
    end
end