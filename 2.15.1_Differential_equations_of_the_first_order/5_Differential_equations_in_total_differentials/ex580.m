% (sin(y)+(1-y)*cos(x))*dx+((1+x)*cos(y)-sin(x))*dy=0

% 1)
clear
% y'=-(sin(y)+(1-y)*cos(x))/((1+x)*cos(y)-sin(x))
syms x y(x)
eqn=diff(y(x))==-(sin(y)+(1-y)*cos(x))/((1+x)*cos(y)-sin(x))
ySol=dsolve(eqn)
% solve(sin(y) - sin(x)*(y - 1) + x*sin(y) == -C8, y)
% sin(y) - sin(x)*(y - 1) + x*sin(y) == -C8

% 2)
syms x y
P(x,y)=sin(y)+(1-y)*cos(x)
Q(x,y)=(1+x)*cos(y)-sin(x)
dPy=diff(P,y)
% cos(y) - cos(x)
dQx=diff(Q,x)
% cos(y) - cos(x)
% dPy==dQx

% U(x,y)
% dUx=P, dUy=Q
syms C(y)
U=int(P(x,y),x)+C(y)
% C(y) - sin(x)*(y - 1) + x*sin(y)
dUy=diff(U,y)
% diff(C(y), y) - sin(x) + x*cos(y)
dCy=simplify(dUy-Q)
% diff(C(y), y) - cos(y)
C(y)=int(cos(y),y)
% sin(y)
% sin(y) - sin(x)*(y - 1) + x*sin(y) = C1