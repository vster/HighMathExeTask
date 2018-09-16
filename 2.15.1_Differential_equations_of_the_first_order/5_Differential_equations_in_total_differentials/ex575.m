% (x+sin(y))*dx+(x*cos(y)+sin(y))*dy=0

% y'=-(x+sin(y))/(x*cos(y)+sin(y))
% syms x y(x)
% eqn=diff(y(x))==-(x+sin(y))/(x*cos(y)+sin(y))
% ySol=dsolve(eqn)
% don't work((

syms x y
P(x,y)=x+sin(y)
Q(x,y)=x*cos(y)+sin(y)
dPy=diff(P,y)
% cos(y)
dQx=diff(Q,x)
% cos(y)
% dPy==dQx

% U(x,y)
% dUx=P, dUy=Q
syms C(y)
U=int(P(x,y),x)+C(y)
% C(y) + (x*(x + 2*sin(y)))/2
dUy=diff(U,y)
% diff(C(y), y) + x*cos(y) == Q(x,y) == x*cos(y)+sin(y)
% diff(C(y), y) == sin(y)
C1(y)=int(sin(y),y)
% -cos(y)
U=subs(U,C(y),C1(y))
% (x*(x + 2*sin(y)))/2 - cos(y) = C
% x^2/2 + x*sin(y) - cos(y) = C