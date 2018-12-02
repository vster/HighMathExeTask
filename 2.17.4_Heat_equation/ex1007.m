% Solve equation
% du/dt=a^2*d2u/dt2
% initial conditions
% u(t=0)=f(x)=c*x*(L-x)/L^2
% boundary conditions
% u(x=0)=u(x=L)=0

clear
syms x t L c a
assume(L>0)
f=piecewise(0<=x<=L,c*x*(L-x)/L^2,0)
% u(x,t)=sum(k=1:inf)b(k)*exp(-(k*pi/L)^2*t)*sin(k*pi*x/L)
syms k integer
b(k)=2/L*int(f*sin(k*pi*x/L),x,0,L)
b(k)=simplify(b(k))
% (2*(-1)^(k + 1)*c*((-1)^k - 1)^2)/(k^3*pi^3)
bf(k)=b(k)*exp(-(k*pi*a/L)^2*t)*sin(k*pi*x/L)
% (2*(-1)^(k + 1)*c*exp(-(a^2*k^2*t*pi^2)/L^2)*sin((pi*k*x)/L)*((-1)^k - 1)^2)/(k^3*pi^3)
pretty(bf(k))
syms n integer
bf(n)=simplify(subs(bf(k),k,2*n+1))
% (8*c*exp(-(a^2*t*pi^2*(2*n + 1)^2)/L^2)*sin((x*pi*(2*n + 1))/L))/(pi^3*(2*n + 1)^3)
pretty(bf(n))
%     /    2     2          2 \
%     |   a  t pi  (2 n + 1)  |    / x pi (2 n + 1) \
%c exp| - ------------------- | sin| -------------- | 8
%     |             2         |    \        L       /
%     \            L          /
%------------------------------------------------------
%                      3          3
%                    pi  (2 n + 1)

% u(x,t)=sum(n=1:inf)bf(n)
