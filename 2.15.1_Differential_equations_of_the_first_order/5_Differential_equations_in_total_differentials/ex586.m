% (asin(x)+2*x*y)*dx+(x^2+1+atan(y))*dy=0

clear
% 1)
% y'=-(asin(x)+2*x*y)/(x^2+1+atan(y))
syms x y(x)
eqn=diff(y(x))==-(asin(x)+2*x*y)/(x^2+1+atan(y))
ySol=dsolve(eqn)
% solve(y*x^2 + y - log(y^2 + 1)/2 + y*atan(y) == - C5 - x*asin(x) - (1 - x^2)^(1/2), y)
% y*x^2 + y - log(y^2 + 1)/2 + y*atan(y) == - C5 - x*asin(x) - (1 - x^2)^(1/2)

% 2)
syms x y
P(x,y)=asin(x)+2*x*y
Q(x,y)=x^2+1+atan(y)
dPy=diff(P,y)
% 2*x
dQx=diff(Q,x)
% 2*x
% dPy==dQx

% U(x,y)
% dUx=P, dUy=Q
syms C(y)
U=int(P(x,y),x)+C(y)
% C(y) + x^2*y + x*asin(x) + (1 - x^2)^(1/2)
dUy=diff(U,y)
% x^2 + diff(C(y), y)
dCy=simplify(dUy-Q)
% diff(C(y), y) - atan(y) - 1
C(y)=int(atan(y) + 1,y)
% y - log(y^2 + 1)/2 + y*atan(y)
% y - log(y^2 + 1)/2 + y*atan(y)+ x^2*y + x*asin(x) + (1 - x^2)^(1/2) = C1
