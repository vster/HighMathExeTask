clear
syms k lam x
assume(lam>0)
f(x)=piecewise(x<0,0,x>=0,lam*exp(-lam*x))

F(x)=int(f(x),x,-inf,x)

syms alfa beta
assume(alfa<beta)
FAB=int(f(x),x,alfa,beta)
% piecewise(0 <= alfa, exp(-alfa*lam) - exp(-beta*lam), beta <= 0, 0, alfa <= 0 & 0 < beta, 1 - exp(-beta*lam))
% exp(-alfa*lam) - exp(-beta*lam)

MX=int(x*f(x),x,0,inf)
% 1/lam

DX=int(x^2*f(x),x,0,inf)-MX^2
% 1/lam^2

sigma=sqrt(DX)
% 1/lam

% Reliability function
syms t
R(t)=exp(-lam*t)