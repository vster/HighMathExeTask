% Investigate the convergence of the series
% 2/3+1/3+1/6+1/12+...+(2/3)*(1/2)^(n-1)+...

syms n;
u(n)=(2/3)*(1/2)^(n-1)
S=symsum(u(n),1,inf)
% 4/3