Xg = [-6:6]';
Yg = [-129.1,-46.1,14.9,54.3,35.3,36.7,12.7,6.2,-31.9,-26.7,-11.5,26.0,90.0]';

% Part B
Z2 = [ones(size(Xg)) Xg Xg.^2];
coeff2 = (Z2'*Z2)\(Z2'*Yg);
Sr2 = sum((Yg-Z2*coeff2).^2);

% Part C
Z3 = [ones(size(Xg)) Xg Xg.^2 Xg.^3];
coeff3 = (Z3'*Z3)\(Z3'*Yg);
Sr3 = sum((Yg-Z3*coeff3).^2);

% Part A + B + C Graphs
hold on
plot(Xg,Yg);
plot(Xg, coeff2(1)+coeff2(2)*Xg+coeff2(3)*Xg.^2);
plot(Xg, coeff3(1)+coeff3(2)*Xg+coeff3(3)*Xg.^2 + coeff3(4)*Xg.^3);

% Part D
Serror2 = sqrt(Sr/(length(Xg)-length(coeff2)));
Serror3 = sqrt(Sr/(length(Xg)-length(coeff3)));
fprintf("Quadratic error is %.3f and Cubic error is %.3f.\n",Serror2,Serror3);