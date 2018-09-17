% y*exp(x)*dx+(y+exp(x))*dy=0

clear
% 1)
% y'=-y*exp(x)/(y+exp(x))
syms x y(x)
eqn=diff(y(x))==-y*exp(x)/(y+exp(x))
ySol=dsolve(eqn)
%    (C13 + exp(2*x))^(1/2) - exp(x)
%  - exp(x) - (C13 + exp(2*x))^(1/2)

% 2)
syms x y
P(x,y)=y*exp(x)
Q(x,y)=y+exp(x)
dPy=diff(P,y)
% exp(x)
dQx=diff(Q,x)
% exp(x)
% dPy==dQx

% U(x,y)
% dUx=P, dUy=Q
syms C(y)
U=int(P(x,y),x)+C(y)
% C(y) + y*exp(x)
dUy=diff(U,y)
% diff(C(y), y) + exp(x)
dCy=simplify(dUy-Q)
% diff(C(y), y) - y
C(y)=int(y,y)
% y^2/2 + C1
% U=y*exp(x)+y^2/2 + C1
% y*exp(x)+y^2/2 = C2