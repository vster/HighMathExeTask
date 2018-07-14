% Investigate the convergence of a power series
% sum (n=1:inf) (n*x)^n

syms x n;
u(x,n)=(n*x)^n

a(n)=n^n

a1=simplify(a(n)^(1/n))
a1=n

R=1/limit(n,n,inf)
% R=0
% series converges in x=0 only