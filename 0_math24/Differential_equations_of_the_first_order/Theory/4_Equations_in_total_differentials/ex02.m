% Find the solution of the differential equation
% (6*x^2-y+3)*dx+(3*y^2-x-2)*dy=0

% 1)
clear
% y'=-(6*x^2-y+3)/(3*y^2-x-2)
syms x y(x)
eqn=diff(y(x))==-(6*x^2-y+3)/(3*y^2-x-2)
ySol=dsolve(eqn)
% root(z^3 - z*(x + 2) + 3*x - C20 + 2*x^3, z)

% 2)
syms x y
P(x,y)=6*x^2-y+3
Q(x,y)=3*y^2-x-2
dQx=diff(Q,x)
% -1
dPy=diff(P,y)
% -1
% dPx=dPy

% dUx=P(x,y), dUy=Q(x,y)
U(x,y)=int(P,x)
% 2*x^3 + (3 - y)*x
syms phi(y)
U(x,y)=U(x,y)+phi(y)
% 2*x^3 + (3 - y)*x + phi(y)
dUy=diff(U(x,y),y)
% diff(phi(y), y) - x
eq1=dUy-Q
% diff(phi(y), y) - 3*y^2 + 2
dphi(y)=3*y^2 - 2
phi(y)=int(dphi(y),y)
% y^3 - 2*y
% 2*x^3 + 3*x - y*x + y^3 - 2*y = C
