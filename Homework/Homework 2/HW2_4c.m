x = .5;
trueval = ((1/(sqrt(2*pi)))*(-x)*exp(((-(x))^2)/2));
bvalues = [0.225985896662451,0.226030305583436,0.226030416605738,0.226030696492963,0.226058668976181,0.228868123709547];
for l = 1:length(bvalues)
    error(l) = abs(bvalues(l) - trueval);
end