% Using the Cauchy test, investigate the convergence of series
% 3+(2.1)^2+(2.01)^3+...+(2+(0.1)^(n-1))+...

syms n;
u(n)=2+(0.1)^(n-1)
C=limit(u(n)^(1/n),n,inf)
% C=1
S=symsum(u(n),n,1,inf)
% Inf
% u(n) is diverges
