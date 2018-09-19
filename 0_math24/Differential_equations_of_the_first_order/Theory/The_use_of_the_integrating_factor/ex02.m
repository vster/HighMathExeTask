% Solve the differential equation
% (x-cos(y))*dx-sin(y)*dy=0

clear
% 1)
% y'=(x-cos(y))/sin(y)
% syms x y(x)
% eqn=diff(y(x))==(x-cos(y))/sin(y)
% ySol=dsolve(eqn)
% ???

% 2)
syms x y
P=x-cos(y)
Q=-sin(y)
dQx=diff(Q,x)
% 0
dPy=diff(P,y)
% sin(y)
% dQx/=dPy

eq1=(dPy-dQx)/Q
% -1
% 1/mu*dmu/dx=-1
% dmu/mu=-dx
syms mu
eq2=int(1/mu,mu)+int(1,x)
% x + log(mu)
mu1=exp(-x)

P1=P*mu1
% exp(-x)*(x - cos(y))
Q1=Q*mu1
% -exp(-x)*sin(y)
dQ1x=diff(Q1,x)
% exp(-x)*sin(y)
dP1y=diff(P1,y)
% exp(-x)*sin(y)
% dQ1x==dP1y

% u(x,y)
% dux=P1
% duy=Q1
u=int(P1,x)
% -exp(-x)*(x - cos(y) + 1)
syms phi(y)
u=u+phi(y)
% phi(y) - exp(-x)*(x - cos(y) + 1)
duy=diff(u,y)
% diff(phi(y), y) - exp(-x)*sin(y)
eq3=duy-Q1
% diff(phi(y), y) = 0 => phi(y)=C
% exp(-x)*(x - cos(y) + 1) = C