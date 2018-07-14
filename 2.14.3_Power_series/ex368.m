% Investigate the convergence of a power series
% sum (n=1:inf) (x+1)^n/(2*n-1)!

syms x n;
u(x,n)=(x+1)^n/factorial(2*n-1)

a(n)=1/factorial(2*n-1)
R=limit(a(n)/a(n+1),n,inf)
% R=Inf => -inf<x<+inf
