% Investigate the convergence of a power series
% u(x,n)=1/n^2*(x-2)^n

syms x n;
u(x,n)=1/n^2*(x-2)^n

a(n)=1/n^2
R=limit(a(n)/a(n+1),n,inf)
% 1 => -1<x-2<1 => 1<x<3

u1(n)=subs(u,x,1)
% (-1)^n/n^2 - series converges absolutly

u2(n)=subs(u,x,3)
% 1/n^2
% 1/n^p - series convergies if p>1 => 1/n^2 converges
% So, series converges in range 1<=x<=3
