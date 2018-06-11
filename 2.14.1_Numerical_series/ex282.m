% Investigate the convergence of the series
% 1/3+(2/5)^2+(3/7)^3+...+(n/(2n+1))^n+...

clear
syms n;
u(n)=(n/(2*n+1))^n
% apply the Cauchy criterion
C=limit(u(n)^(1/n),n,inf)
% 1/2 < 1 => u(n) is converge


