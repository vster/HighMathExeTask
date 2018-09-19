% Solve equation
% (1+y^2)*dx+x*y*dy=0

clear
% 1)
% y'=-(1+y^2)/(x*y)
syms x y(x)
eqn=diff(y(x))==-(1+y^2)/(x*y)
ySol=dsolve(eqn)
%  (exp(C2 - 2*log(x)) - 1)^(1/2)
% -(exp(C2 - 2*log(x)) - 1)^(1/2)
%                              1i
%                             -1i

% 2)
syms x y
P=1+y^2
Q=x*y
dQx=diff(Q,x)
% y
dPy=diff(P,y)
% 2*y
% dQx/=dPy

eq1=(dPy-dQx)/Q
% 1/x
% 1/mu*dmu/dx=1/x
% dmu/mu-dx/x
syms mu
eq2=int(1/mu,mu)-int(1/x,x)
% log(mu) - log(x)
% mu=x
P1=P*x
% x*(y^2 + 1)
Q1=Q*x
% x^2*y
dQ1x=diff(Q1,x)
% 2*x*y
dP1y=diff(P1,y)
% 2*x*y
% dQ1x=dP1y

% u(x,y)
% dux=P1
% duy=Q1
u=int(P1,x)
% x^2*(y^2/2 + 1/2)
syms phi(y)
u=u+phi(y)
% (y^2/2 + 1/2)*x^2 + phi(y)
duy=diff(u,y)
% y*x^2 + diff(phi(y), y)
eq3=duy-Q1
% diff(phi(y), y) = 0 => phi(y)=C
% x^2*y^2/2 + x^2/2 + C = 0