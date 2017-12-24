function [anew,niter,danorm] = GradDescent_ex1(acoef0,adaptive_alpha_mode)

  % adaptive 
%   adaptive_alpha_mode = 0;


  % termination tolerance
  tol = 1e-3;


  % maximum number of allowed iterations
  maxiter = 2000;


  % initialize optimization vector, iteration counter, perturbation
  a = acoef0(:); niter = 0; danorm = inf;


  % gradient descent algorithm:
  while ((danorm > tol) && (niter<maxiter))


      % calculate gradient:
      grad = ComputeGrad_ex1(a);


      if (norm(grad) < tol)
        break;
      end


      %compute residual and error
      %===========================
      %res = ComputeResidual_ex1(a);
      %Sr = ????????
      %===========================

      % determine stepsize alpha and update anew
      if (adaptive_alpha_mode == 0)

        alpha = 0.1;
        anew = a - alpha*grad;

      else

        alpha = 1;
        while (1)
          anew = a - alpha*grad;
          resnew = ComputeResidual_ex1(anew);
          Srnew = sum(resnew(:).^2);

          % backtracking algorithm
          %============================
          %if (??????????????????????)
          %  break;
          %else
          %  alpha = alpha/2
          %end
          %=============================

        end

      end %adaptive alpha


      % check step
      if ~isfinite(anew)
          display(['Number of iterations: ' num2str(niter)])
          error('x is inf or NaN')
      end


      % update a coefficients
      niter = niter + 1;
      danorm = norm(anew-a);%/norm(a);
      a = anew;

  end


niter  
end

