% Solve equation
% 2*x*y*dx+(x^2+3*y^2)*dy=0

% 1)
clear
% y'=-2*x*y/(x^2+3*y^2)
syms x y(x)
eqn=diff(y(x))==-2*x*y/(x^2+3*y^2)
ySol=dsolve(eqn)
% root(z^3 + x^2*z + C19, z)

% 2)
syms x y
P(x,y)=2*x*y
Q(x,y)=x^2+3*y^2
dQx=diff(Q,x)
% 2*x
dPy=diff(P,y)
% 2*x
% dPx=dPy

% U(x,y)
% dUx=P, dUy=Q
U(x,y)=int(P,x)
% x^2*y
syms phi(y)
U(x,y)=U(x,y)+phi(y)
% y*x^2 + phi(y)
dUy=diff(U(x,y),y)
% x^2 + diff(phi(y), y) = Q = x^2+3*y^2 => diff(phi(y), y) = 3*y^2
eq1=dUy-Q
% diff(phi(y), y) - 3*y^2
dphi(y)=3*y^2
phi(y)=int(dphi(y),y)
% y^3
% y*x^2+y^3=C
