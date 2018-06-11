% Investigate the convergence of the series
% 2/1+2^2/2^10+2^3/3^10+...+2^n/n^10+...

clear
syms n;
u(n)=2^n/n^10
% Apply the d'Alembert test
D=limit(u(n+1)/u(n),n,inf)
% 2 > 1 => u(n) is diverges
