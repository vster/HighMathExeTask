% Investigate the convergence of a power series
% sum (n=1:inf) (x-1)^n/2^n

syms x n;
u(x,n)=(x-1)^n/2^n

a(n)=1/2^n
R=limit(a(n)/a(n+1),n,inf)
% R=2 => -2<x-1<2 => -1<x<3

u1(n)=subs(u,x,-1)
u1=simplify(u1)
% (-1)^n => series divereges

u2(n)=subs(u,x,3)
u2=simplify(u2)
% 1 => series divereges
% series converges in -1<x<3