% Investigate the convergence of the series
% 1+1/2^2+1/3^2+...+1/n^2+...
clear
syms n;
u(n)=1/n^2
% Apply the d'Alembert test
D=limit(u(n+1)/u(n),n,inf)
% 1
% D=1 => can not be solved with d'Alembert test

% Apply integral test
syms x;
f(x)=1/x^2
I=int(f,x,1,inf)
% 1 
% integral is converge => series is converge too
