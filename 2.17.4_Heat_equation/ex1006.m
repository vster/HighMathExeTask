% solve equation 
% du/dt=a^2*d2u/dt2
% initial condition
% u(t=0)=f(x)=piecewise(0<x<L,u0,0)
% boundary condition
% u(x=0)=0

clear
syms x t a L ksi u0 real
assume(a>0)
assume(t>0)
u=1/(2*a*sqrt(pi*t))*int(u0*exp(-(ksi-x)^2/(4*a^2*t))-u0*exp(-(ksi+x)^2/(4*a^2*t)),ksi,0,L)
u=simplify(u)
% (u0*(2*erf(x/(2*a*t^(1/2))) - erf((L + x)/(2*a*t^(1/2))) + erf((L - x)/(2*a*t^(1/2)))))/2
pretty(u)
%   /    /      x      \        /    L + x    \      /    L - x    \ \
%u0 | erf| ----------- | 2 - erf| ----------- | + erf| ----------- | |
%   \    \ 2 a sqrt(t) /        \ 2 a sqrt(t) /      \ 2 a sqrt(t) / /
%---------------------------------------------------------------------
%                                  2
