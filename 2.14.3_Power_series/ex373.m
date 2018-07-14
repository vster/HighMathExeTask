% Investigate the convergence of a power series
% sum (n=1:inf) x^(2*n)/n

syms x n;
u(x,n)=x^(2*n)/n

% x^2=t
syms t;
u(t,n)=t^n/n

a(n)=1/n
R=limit(a(n)/a(n+1),n,inf)
% 1 => 0<t<1

u1(n)=subs(u,t,1)
% 1/n => series diverges
% 0<t<1 => -1<x<1