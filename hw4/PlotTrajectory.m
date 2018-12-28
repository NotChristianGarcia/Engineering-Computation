   
   
function PlotTrajectory(no,xk,yk)
%no Problem number
%xk vector containing x iterates
%yk vector containing y iterates

switch no
    
    case 3
        
        func=@(x) [ 1 - 2*x(2)^3 + 2*x(1)^2 - 4*x(1);
            x(1)^4 + 4*x(2)^4 + 4*x(2) - 4];
        n = 101;
        x = linspace(-2,1,n);
        y = linspace(0.5,1,n);
        f1 = zeros(n,n);
        f2 = zeros(n,n);
        for i=1:n
            for j=1:n
                fxy = func([x(i);y(i)]);
                f1(j,i) = fxy(1);
                f2(j,i) = fxy(2);
            end
        end
        
        colormap('hot');
        subplot(1,2,1);
        contourf(x,y,f1);colorbar;hold on;
        plot(xk,yk,'yx-','LineWidth',3,'MarkerSize',10);
        title('f_1'); xlabel('x');ylabel('y');set(gca,'FontSize',16);
        subplot(1,2,2);
        contourf(x,y,f2);colorbar;hold on;
        plot(xk,yk,'yx-','LineWidth',3,'MarkerSize',10);
        title('f_2'); xlabel('x');ylabel('y');set(gca,'FontSize',16);
        
        
        
    case 4
        f = @(x) x.^4 + 2*(x.^3) + 8*(x.^2) + 5*x;
        figure(1); clf; ezplot(f,[-2,2]); hold on;
        plot(xk,f(xk),'ko-');
        hold off;
        
        
    case 5
        
        f = @(x,y) x.^2 + x.*y + 3*y.^2;
        figure(1); clf; ezcontour(f,[-5 5 -5 5]); axis equal; hold on;
        
        plot(xk,yk,'ko-');
        
        hold off;
        
        
    otherwise
        
        disp('not correct problem number');
        
end

    
    
    %Contour plot
    
