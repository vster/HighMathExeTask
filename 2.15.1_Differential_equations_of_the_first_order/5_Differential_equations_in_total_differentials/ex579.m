% (2*x*y*exp(x^2)+log(y))*dx+(exp(x^2)+x/y)*dy=0
% y(0)=1

% 1)
clear
% y'=-(2*x*y*exp(x^2)+log(y))/(exp(x^2)+x/y)
syms x y(x)
eqn=diff(y(x))==-(2*x*y*exp(x^2)+log(y))/(exp(x^2)+x/y)
cond=y(0)==1
ySol=dsolve(eqn,cond)
% [ empty sym ]

% 2)
syms x y
P(x,y)=2*x*y*exp(x^2)+log(y)
Q(x,y)=exp(x^2)+x/y
dPy=diff(P,y)
% 2*x*exp(x^2) + 1/y
dQx=diff(Q,x)
% 2*x*exp(x^2) + 1/y
% dPy==dQx

% U(x,y)
% dUx=P, dUy=Q
syms C(y)
U=int(P(x,y),x)+C(y)
% C(y) + y*exp(x^2) + x*log(y)
dUy=diff(U,y)
% exp(x^2) + diff(C(y), y) + x/y
dCy=simplify(dUy-Q)
% dCy=0
syms C1
U=y*exp(x^2) + x*log(y)+ C1
U1=subs(U,[x y],[0 1])
% C1=-1
% y*exp(x^2) + x*log(y) = 1