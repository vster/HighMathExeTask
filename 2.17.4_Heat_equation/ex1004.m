% Solve equation
% du/dt=d2u/dx2
% (0<x<L,L>0)
% initial conditions
% u(t=0)=f(x)=piecewise(0<x<=L/2,x,L/2<=x<L,L-x)
% boundary conditions
% u(x=0)=u(x=L)=0

clear
syms x t L
assume(L>0)
f=piecewise(0<x<=L/2,x,L/2<=x<L,L-x)
% u(x,t)=sum(k=1:inf)b(k)*exp(-(k*pi/L)^2*t)*sin(k*pi*x/L)
syms k integer
b(k)=2/L*int(f*sin(k*pi*x/L),x,0,L)
b(k)=simplify(b(k))
% -(2*(-1)^(k/2 - 1/2)*L*((-1)^k - 1))/(k^2*pi^2)
bf(k)=b(k)*exp(-(k*pi/L)^2*t)*sin(k*pi*x/L)
pretty(bf(k))

syms n
bf(n)=simplify(subs(bf(k),k,2*n+1))
bf(n)=subs(bf(n),(-1)^(2*n) + 1,2)
pretty(bf(n))
%           /       2          2 \
%    n      |   t pi  (2 n + 1)  |    / x pi (2 n + 1) \
%(-1)  L exp| - ---------------- | sin| -------------- | 4
%           |           2        |    \        L       /
%           \          L         /
%---------------------------------------------------------
%                        2          2
%                      pi  (2 n + 1)

% u(x,t)=sum(n=1:inf)bf(n)



