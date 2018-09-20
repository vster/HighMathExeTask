% (3*x^2*y+sin(x))*dx+(x^3-cos(y))*dy=0

clear
% 1)
% y'=-(3*x^2*y+sin(x))/(x^3-cos(y)
syms x y(x)
eqn=diff(y(x))==-(3*x^2*y+sin(x))/(x^3-cos(y))
ySol=dsolve(eqn)
% solve(- y*x^3 + sin(y) == - C6 - cos(x), y)
% - y*x^3 + sin(y) == - C6 - cos(x)

% 2)
syms x y
P(x,y)=3*x^2*y+sin(x)
Q(x,y)=x^3-cos(y)
dPy=diff(P,y)
% 3*x^2
dQx=diff(Q,x)
% 3*x^2
% dPy==dQx

% U(x,y)
% dUx=P, dUy=Q
syms C(y)
U=int(P(x,y),x)+C(y)
% C(y) - cos(x) + x^3*y
dUy=diff(U,y)
% x^3 + diff(C(y), y)
dCy=simplify(dUy-Q)
% diff(C(y), y) + cos(y)
C(y)=int(-cos(y),y)
% -sin(y)
% cos(x) - x^3*y + sin(y) = C1