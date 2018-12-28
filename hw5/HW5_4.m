Xg = [.1,.2,.4,.6,.9,1.3,1.5,1.7,1.8]';
Yg = [.75,1.25,1.45,1.25,.85,.55,.35,.28,.18]';

% Part B
% Y: = log(y) - log(x)
Z = [ones(size(Xg)) Xg Xg.^2];
coeff = (Z'*Z)\(Z'*Yg);
Sr = sum((Yg-Z*coeff).^2);
hold on
plot(Xg,Yg);
plot(Xg,coeff(1) + coeff(2)*Xg.^2 + coeff(3)*Xg.^3);