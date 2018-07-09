% Investigate the convergence of the series
% u(x,n)=x^n/n!

syms x n;
u(x,n)=x^n/factorial(n)

a(n)=1/factorial(n)
a0=0

R=limit(abs(a(n)/a(n+1)),n,inf)
% R=Inf => seris converges at any x

% L=limit(u(x,n),n,inf) == 0 at any x

