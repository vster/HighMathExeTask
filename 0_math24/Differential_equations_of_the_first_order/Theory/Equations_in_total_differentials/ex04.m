% Solve equation
% (2*x*y-sin(x))*dx+(x^2-cos(y))*dy=0

% 1)
clear
% y'=-(2*x*y-sin(x))/(x^2-cos(y))
syms x y(x)
eqn=diff(y(x))==-(2*x*y-sin(x))/(x^2-cos(y))
ySol=dsolve(eqn)
% solve(- y*x^2 + sin(y) == cos(x) - C23, y)
% - y*x^2 + sin(y) == cos(x) - C23

% 2)
syms x y
P(x,y)=2*x*y-sin(x)
Q(x,y)=x^2-cos(y)
dQx=diff(Q,x)
% 2*x
dPy=diff(P,y)
% 2*x
% dPx=dPy

% dUx=P(x,y), dUy=Q(x,y)
U(x,y)=int(P,x)
% cos(x) + x^2*y
syms phi(y)
U(x,y)=U(x,y)+phi(y)
% cos(x) + phi(y) + x^2*y
dUy=diff(U(x,y),y)
% x^2 + diff(phi(y), y)
eq1=dUy-Q
% diff(phi(y), y) + cos(y)
dphi(y)=-cos(y)
phi(y)=int(dphi(y),y)
% -sin(y)
% cos(x) + x^2*y - sin(y) = C