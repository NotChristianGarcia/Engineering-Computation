    
% two coefficients
function grad = ComputeGrad_ex1(acoef)
    
  % DATA SET
  xi = [0.1, 0.2, 0.4, 0.6, 0.9, 1.3, 1.5, 1.7, 1.8];
  yi = [0.75, 1.25, 1.45, 1.25, 0.85, 0.55, 0.35, 0.28, 0.18];

  ndata = length(xi);
  
  % estimated y
  y = acoef(1) * xi(:) .* exp(acoef(2) * xi(:));

  % gradient of Sr, dSr
  grad = zeros(2,1);
