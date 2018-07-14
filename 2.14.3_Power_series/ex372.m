% Investigate the convergence of a power series
% sum (n=1:inf) 5^n*x^n/n!

syms x n;
u(x,n)=5^n*x^n/factorial(n)

a(n)=5^n/factorial(n)
R=limit(a(n)/a(n+1),n,inf)
% Inf => -inf<x<+inf
% series converges for any value of x