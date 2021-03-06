% (x^2+y^2+y)*dx+(2*x*y+x+exp(y))*dy=0
% y(0)=0

% 1)
clear
% y'=-(x^2+y^2+y)/(2*x*y+x+exp(y))
syms x y(x)
eqn=diff(y(x))==-(x^2+y^2+y)/(2*x*y+x+exp(y))
cond=y(0)==0
ySol=dsolve(eqn,cond)
% solve(exp(y) + x*y*(y + 1) == 1 - x^3/3, y)
% exp(y) + x*y*(y + 1) == 1 - x^3/3

% 2)
syms x y
P(x,y)=x^2+y^2+y
Q(x,y)=2*x*y+x+exp(y)
dPy=diff(P,y)
% 2*y + 1
dQx=diff(Q,x)
% 2*y + 1
% dPy==dQx

% U(x,y)
% dUx=P, dUy=Q
syms C(y)
U=int(P(x,y),x)+C(y)
% C(y) + x*(y^2 + y) + x^3/3
dUy=diff(U,y)
% x*(2*y + 1) + diff(C(y), y)
dCy=simplify(dUy-Q)
% diff(C(y), y) - exp(y) => dCy=exp(y) => C(y)=exp(y)
% exp(y) + x*(y^2 + y) + x^3/3 = C1
syms C1
eq1=exp(y) + x*(y^2 + y) + x^3/3 - C1
eq2=subs(eq1,[x y],[0 0])
% C1=1
% exp(y) + x*(y^2 + y) + x^3/3 = 1