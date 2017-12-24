MatrixA = [2,8,10;8,4,5;10,5,7];
[EigMax,IterationsMax] = Powereig(MatrixA);
fprintf('The max eigenvalue is %f and it took %.0f iterations to get there.\n',EigMax,IterationsMax);
[EigMin,IterationsMin] = Powereig(inv(MatrixA));
fprintf('The min eigenvalue is %f and it took %.0f iterations to get there.\n\n',EigMin,IterationsMin);
[a,b] = eig(MatrixA);

[EigValuesfuncMax,EigMaxfunc] = eig(MatrixA);
[EigValuesfuncMin,EigMinfunc] = eig(inv(MatrixA));

fprintf('The max eigenvalue I calculated was %f and the max eigenvalue from inbuilt functions was %f.\n',EigMax,EigMaxfunc(3,3));
fprintf('The min eigenvalue I calculated was %f and the min eigenvalue from inbuilt functions was %f.\n\n',EigMin,EigMinfunc(3,3));

fprintf('My calculated and the inbuilt calculated values are the same up to a few decimals.\n');
