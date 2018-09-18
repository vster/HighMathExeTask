% (y+x*log(y))*dx+(x^2/(2*y)+x+1)*dy=0

clear
% 1)
% y'=-(y+x*log(y))/(x^2/(2*y)+x+1)
syms x y(x)
eqn=diff(y(x))==-(y+x*log(y))/(x^2/(2*y)+x+1)
ySol=dsolve(eqn)
% solve(log(y)*x^2 + 2*y*x + 2*y == -C11, y)
% log(y)*x^2 + 2*y*x + 2*y == -C11

% 2)
syms x y
P(x,y)=y+x*log(y)
Q(x,y)=x^2/(2*y)+x+1
dPy=diff(P,y)
% x/y + 1
dQx=diff(Q,x)
% x/y + 1
% dPy==dQx

% U(x,y)
% dUx=P, dUy=Q
syms C(y)
U=int(P(x,y),x)+C(y)
% (log(y)*x^2)/2 + y*x + C(y)
dUy=diff(U,y)
% x^2/(2*y) + x + diff(C(y), y)
dCy=simplify(dUy-Q)
% diff(C(y), y) - 1
% C(y)=y+C1
% log(y)*x^2 + 2*y*x + 2*y = C2
