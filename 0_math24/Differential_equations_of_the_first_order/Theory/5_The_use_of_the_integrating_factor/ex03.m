% Solve the differential equation
% (x*y^2-2*y^3)*dx+(3-2*x*y^2)*dy=0

% 1)
clear
% y'=-(x*y^2-2*y^3)/(3-2*x*y^2)
syms x y(x)
eqn=diff(y(x))==-(x*y^2-2*y^3)/(3-2*x*y^2)
ySol=dsolve(eqn)
%                                                            0
%  (x^2 - 2*C5 + (4*C5^2 - 4*C5*x^2 + x^4 - 96*x)^(1/2))/(8*x)
% -(2*C5 - x^2 + (4*C5^2 - 4*C5*x^2 + x^4 - 96*x)^(1/2))/(8*x)

% 2)
clear
syms x y
P=x*y^2-2*y^3
Q=3-2*x*y^2
dQx=diff(Q,x)
% -2*y^2
dPy=diff(P,y)
% - 6*y^2 + 2*x*y
% dQx/=dPy

eq1=-(dPy-dQx)/P
eq1=simplify(eq1) 
% -2/y
% 1/mu*dmu/dy+2/y=0
% dmu/mu+2*dy/y=0
syms mu
eq2=int(1/mu,mu)+int(2/y,y)
% log(mu) + 2*log(y)
% mu=+/1/y^2
mu1=1/y^2

P1=simplify(P*mu1)
% x - 2*y
Q1=simplify(Q*mu1)
% -(2*x*y^2 - 3)/y^2
dQ1x=diff(Q1,x)
% -2
dP1y=diff(P1,y)
% -2
% dQ1x==dP1y

% u(x,y)
% dux=P1
% duy=Q1
u=int(P1,x)
% (x*(x - 4*y))/2
syms phi(y)
u=u+phi(y)
% phi(y) + (x*(x - 4*y))/2
% phi(y)+x^2/2-2*x*y
duy=diff(u,y)
% diff(phi(y), y) - 2*x
eq3=simplify(duy-Q1)
% (y^2*diff(phi(y), y) - 3)/y^2
dphi=3/y^2
phi(y)=int(dphi,y)
% x^2/2-2*x*y-3/y=C, y=0
