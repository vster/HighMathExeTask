% Investigate the convergence of the series
% 10/1!+10^2/2!+10^3/3!+...+10^n/n!+...
clear
syms n;
u(n)=10^n/factorial(n)
% Apply the d'Alembert test
D=limit(u(n+1)/u(n),n,inf)
% 0
% D<0 => u(n) is converge