% (y+exp(x)*sin(y))*dx+(x+exp(x)*cos(y))*dy=0

clear
% 1)
% y'=-(y+exp(x)*sin(y))/(x+exp(x)*cos(y))
syms x y(x)
eqn=diff(y(x))==-(y+exp(x)*sin(y))/(x+exp(x)*cos(y))
ySol=dsolve(eqn)
% solve(exp(x)*sin(y) + x*y == -C4, y)
% exp(x)*sin(y) + x*y == -C4

% 2)
syms x y
P(x,y)=y+exp(x)*sin(y)
Q(x,y)=x+exp(x)*cos(y)
dPy=diff(P,y)
% exp(x)*cos(y) + 1
dQx=diff(Q,x)
% exp(x)*cos(y) + 1
% dPy==dQx

% U(x,y)
% dUx=P, dUy=Q
syms C(y)
U=int(P(x,y),x)+C(y)
% C(y) + exp(x)*sin(y) + x*y
dUy=diff(U,y)
% diff(C(y), y) + x + exp(x)*cos(y) == x+exp(x)*cos(y)
% diff(C(y), y) = 0
% C(y)=C1
% exp(x)*sin(y) + x*y == -C1
