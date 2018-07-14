% Investigate the convergence of a power series
% sum (n=1:inf) x^n/(n*(n+1))

syms x n;
u(x,n)=x^n/(n*(n+1))

a(n)=1/(n*(n+1))
R=limit(a(n)/a(n+1),n,inf)
% 1 => -1<x<1

u1(n)=subs(u(x,n),x,1)
% 1/(n*(n + 1))
L=limit(u1(n),n,inf)
% 0 => series converges

u2(n)=subs(u(x,n),x,-1)
% (-1)^n/(n*(n + 1)) => series diverges

% -1<=x<=1



