% Solve equation 
% du/dt=a^2*d2u/dx2
% for initial distribution
% u(x,t)(t=0)=f(x)=piecewise(x1<x<x2,u0,0)

% We write the solution in the form of the Poisson integral
% u(x,t)=1/(2*a*sqrt(pi*t))*int(-inf:+inf)f(ksi)*
%     *exp(-(ksi-x)^2/(4*a^2*t))d_ksi

syms t x a u0 x1 x2 ksi 
u=u0/(2*a*sqrt(pi*t))*int(exp(-(ksi-x)^2/(4*a^2*t)),ksi,x1,x2)
u=simplify(u)
pretty(u)
u=subs(u,[(1/t)^(1/2),t^(1/2)*(1/t)^(1/2)],[1/sqrt(t),1])
% (u0*(erf((x - x1)/(2*a*t^(1/2))) - erf((x - x2)/(2*a*t^(1/2)))))/2
pretty(u)
%   /    /    x - x1   \      /    x - x2   \ \
%u0 | erf| ----------- | - erf| ----------- | |
%   \    \ 2 a sqrt(t) /      \ 2 a sqrt(t) / /
%----------------------------------------------
%                       2