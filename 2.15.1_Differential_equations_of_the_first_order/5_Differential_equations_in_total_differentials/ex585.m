% (log(y)-5*y^2*sin(5*x))*dx+(x/y+2*y*cos(5*x))*dy=0
% y(0)=e

clear
% 1)
% y'=-(log(y)-5*y^2*sin(5*x))/(x/y+2*y*cos(5*x))
% syms x y(x) e
% eqn=diff(y(x))==-(log(y)-5*y^2*sin(5*x))/(x/y+2*y*cos(5*x))
% cond=y(0)==e
% ySol=dsolve(eqn,cond)
% [ empty sym ]

% 2)
syms x y
P(x,y)=log(y)-5*y^2*sin(5*x)
Q(x,y)=x/y+2*y*cos(5*x)
dPy=diff(P,y)
% 1/y - 10*y*sin(5*x)
dQx=diff(Q,x)
% 1/y - 10*y*sin(5*x)
% dPy==dQx

% U(x,y)
% dUx=P, dUy=Q
syms C(y)
U=int(P(x,y),x)+C(y)
% C(y) + y^2*cos(5*x) + x*log(y)
dUy=diff(U,y)
% 2*y*cos(5*x) + diff(C(y), y) + x/y
dCy=simplify(dUy-Q)
% diff(C(y), y)=0
C(y)=int(0,y)
% C(y)=-C1
% y^2*cos(5*x) + x*log(y) = C1
syms C1 e
eq1=y^2*cos(5*x) + x*log(y) - C1
eq2=subs(eq1,[x y],[0 e])
% e^2 - C1
% y^2*cos(5*x) + x*log(y) = e^2