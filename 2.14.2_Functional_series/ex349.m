% Find the domain of convergence of series
% u(x,n)=1/(n^2*(x^2+1)^n)

syms x n;
u(x,n)=1/(n^2*(x^2+1)^n)

x1=-2:0.2:2;
for i=1:3
    y1=u(x1,i);
    plot(x1,y1)
    hold on
    grid on
end
hold off

v(x,n)=1/n^2
% u(x,n)<=v(x,n) at x=[-inf;+inf]