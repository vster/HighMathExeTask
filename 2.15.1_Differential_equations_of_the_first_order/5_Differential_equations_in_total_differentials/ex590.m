% (y/(x^2+y^2)-y)*dx+(exp(y)-x-x/(x^2+y^2))*dy

clear
% 1)
% y'=-(y/(x^2+y^2)-y)/(exp(y)-x-x/(x^2+y^2))
% syms x y(x)
% eqn=diff(y(x))==-(y/(x^2+y^2)-y)/(exp(y)-x-x/(x^2+y^2))
% ySol=dsolve(eqn)
% [ empty sym ]

% 2)
syms x y
P(x,y)=y/(x^2+y^2)-y
Q(x,y)=exp(y)-x-x/(x^2+y^2)
dPy=diff(P,y)
% 1/(x^2 + y^2) - (2*y^2)/(x^2 + y^2)^2 - 1
dQx=diff(Q,x)
% (2*x^2)/(x^2 + y^2)^2 - 1/(x^2 + y^2) - 1
eq1= simplify(dPy-dQx)
% 0

% U(x,y)
% dUx=P, dUy=Q
syms C(y)
U=int(P(x,y),x)+C(y)
% atan(x/y) + C(y) - x*y
dUy=diff(U,y)
% diff(C(y), y) - x - x/(y^2*(x^2/y^2 + 1))
dCy=simplify(dUy-Q)
% diff(C(y), y) - exp(y)
C(y)=int(exp(y),y)
% exp(y)
% atan(x/y) + exp(y) - x*y = C1