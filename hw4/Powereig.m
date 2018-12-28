function [m,iterations] = Powereig(MatrixA)
%POWEREIG Summary of this function goes here
%   Detailed explanation goes here
eigerror = 100;
eigguess = [1,1,1];
goal = .001;
m = .000001;
iterations = 0;

while goal < abs(eigerror)
    for n = 1:3
        vectors(n) = MatrixA(n,1)*eigguess(1) + MatrixA(n,2)*eigguess(2) + MatrixA(n,3)*eigguess(3);
    end
    oldm = m;
    m = vectors(1);
    for k = 1:3
        if abs(vectors(k)) > abs(m)
            m = vectors(k);
        end
    end
    vectors = vectors(1:3)/m;
    eigguess = vectors;
    eigerror = 100*((m-oldm)/(oldm));
    iterations = iterations + 1;
end

end

