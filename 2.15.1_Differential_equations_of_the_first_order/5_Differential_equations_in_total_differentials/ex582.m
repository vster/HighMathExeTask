% (x^2+sin(y))*dx+(1+x*cos(y))*dy=0

clear
% 1)
% y'=-(x^2+sin(y))/(1+x*cos(y))
syms x y(x)
eqn=diff(y(x))==-(x^2+sin(y))/(1+x*cos(y))
ySol=dsolve(eqn)
% solve(y + x*sin(y) == - x^3/3 - C12, y)
% y + x*sin(y) == - x^3/3 - C12

% 2)
syms x y
P(x,y)=x^2+sin(y)
Q(x,y)=1+x*cos(y)
dPy=diff(P,y)
% cos(y)
dQx=diff(Q,x)
% cos(y)
% dPy==dQx

% U(x,y)
% dUx=P, dUy=Q
syms C(y)
U=int(P(x,y),x)+C(y)
% x^3/3 + sin(y)*x + C(y)
dUy=diff(U,y)
% diff(C(y), y) + x*cos(y)
dCy=simplify(dUy-Q)
% diff(C(y), y) - 1
C(y)=y+C1
% x^3/3 + sin(y)*x + y = C2

