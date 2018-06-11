% Investigate the convergence of the series
% 1/2+1/5+1/8+...+1/(3n-1)+...

clear
syms n;
u(n)=1/(3*n-1)
v(n)=1/2^n
L=limit(u(n)/v(n),n,inf)
% Inf => u(n) is diverges
