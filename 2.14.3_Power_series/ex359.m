% Investigate the convergence of the series
% u(x,n)=n!*(x-5)^n

syms x n;
u(x,n)=factorial(n)*(x-5)^n

a(n)=factorial(n)
R=limit(abs(a(n)/a(n+1)),n,inf)
% R=0 => series converges if x=5
