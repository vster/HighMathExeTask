% (x*y+sin(y))*dx+(0.5*x^2+x*cos(y))*dy=0

% 1)
clear
% y'==-(x*y+sin(y))/(0.5*x^2+x*cos(y))
syms x y(x)
eqn=diff(y(x))==-(x*y+sin(y))/(0.5*x^2+x*cos(y))
ySol=dsolve(eqn)
% solve(2*sin(y) + x*y == -C4/x, y)
% 2*sin(y) + x*y == -C4/x

% 2)
syms x y
P(x,y)=x*y+sin(y)
Q(x,y)=0.5*x^2+x*cos(y)
dPy=diff(P,y)
% x + cos(y)
dQx=diff(Q,x)
% x + cos(y)
% dPy==dQx

% U(x,y)
% dUx=P, dUy=Q
syms C(y)
U=int(P(x,y),x)+C(y)
% (y*x^2)/2 + sin(y)*x + C(y)
dUy=diff(U,y)
% x^2/2 + cos(y)*x + diff(C(y), y) == 0.5*x^2+x*cos(y)
dCy=dUy-Q
% diff(C(y), y) == 0
% y*x^2 + 2*sin(y)*x == C1