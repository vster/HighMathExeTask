% Find the radius and the interval of convergence of the series
% S=sum(n=1:inf)x^n/n

syms x n
u(x,n)=x^n/n
a(n)=1/n

R=limit(abs(a(n)/a(n+1)),n,inf)
% 1

x=-1
u1(n)=u(x,n)
% (-1)^n/n => the series converges

x=1
u2(n)=u(x,n)
% 1/n => the series diverges
% the given series converges on a half-open interval -1=<x<1