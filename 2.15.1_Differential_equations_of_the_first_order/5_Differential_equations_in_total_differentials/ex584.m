% (exp(x)*sin(y)+x)*dx+(exp(x)*cos(y)+y)*dy=0

clear
% 1)
% y'=-(exp(x)*sin(y)+x)/(exp(x)*cos(y)+y)
syms x y(x)
eqn=diff(y(x))==-(exp(x)*sin(y)+x)/(exp(x)*cos(y)+y)
ySol=dsolve(eqn)
% solve(2*exp(x)*sin(y) + y^2 == - x^2 - 2*C14, y)
% 2*exp(x)*sin(y) + y^2 == - x^2 - 2*C14

% 2)
syms x y
P(x,y)=exp(x)*sin(y)+x
Q(x,y)=exp(x)*cos(y)+y
dPy=diff(P,y)
% exp(x)*cos(y)
dQx=diff(Q,x)
% exp(x)*cos(y)
% dPy==dQx

% U(x,y)
% dUx=P, dUy=Q
syms C(y)
U=int(P(x,y),x)+C(y)
% C(y) + exp(x)*sin(y) + x^2/2
dUy=diff(U,y)
% diff(C(y), y) + exp(x)*cos(y)
dCy=simplify(dUy-Q)
% diff(C(y), y) - y
C(y)=int(y,y)
% y^2/2
% 2*exp(x)*sin(y) + x^2 + y^2 = C1

