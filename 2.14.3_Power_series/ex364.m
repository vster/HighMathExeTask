% Investigate the convergence of the series
% sum (n=1:inf) (x-1)^(n*(n+1))/n^n

syms x n;
u(x,n)=(x-1)^(n*(n+1))/n^n

u1=u^(1/n)
u1=(x-1)^(n+1)/n

assume(0<x<2)
L1=limit(u1,n,inf)
% 0

assume(x<0)
L2=limit(u1,n,inf)
% NaN

assume(x>2)
L3=limit(u1,n,inf)
% Inf

% |x-1|<=1 => 0<=x<=2


