% Investigate the convergence of the series
% 1/sqrt(3)+2/3+...+n/3^(n/2)+...
clear
syms n;
u(n)=n/3^(n/2)
% Apply the d'Alembert test
D=limit(u(n+1)/u(n),n,inf)
% 3^(1/2)/3
% D<1 => u(n) is converge