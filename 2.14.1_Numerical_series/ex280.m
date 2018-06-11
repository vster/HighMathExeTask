% To investigate the convergence of 
% a series with a general term

clear
syms n;
digits(10)
u(n)=1/(4*2^n-3)
v(n)=1/2^n
L=limit(u(n)/v(n),n,inf)
% 1/4 and 
% v(n) is converge => u(n) is converge