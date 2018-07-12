% Determine the radius and the interval of convergence of the power series
% S=sum(n=0:inf)n*x^n

syms x n;
u(x,n)=n*x^n
a(n)=n

R=limit(abs(a(n)/a(n+1)),n,inf)
% 1

x=-1
u1(n)=u(x,n)
% (-1)^n*n => the series diverges

x=1
u2(n)=u(x,n)
% n => the series diverges

% The series sum(n=0:inf)n*x^n converges at -1<x<1
