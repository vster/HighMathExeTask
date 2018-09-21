% (exp(x+y)+3*x^2)*dx+(exp(x+y)+4*y^2)*dy=0
% y(0)=0

clear
% 1)
% y'=-(exp(x+y)+3*x^2)/(exp(x+y)+4*y^2)
syms x y(x)
eqn=diff(y(x))==-(exp(x+y)+3*x^2)/(exp(x+y)+4*y^2)
cond=y(0)==0
ySol=dsolve(eqn,cond)
% solve(exp(x + y) + (4*y^3)/3 == 1 - x^3, y)
% exp(x + y) + (4*y^3)/3 == 1 - x^3

% 2)
syms x y
P(x,y)=exp(x+y)+3*x^2
Q(x,y)=exp(x+y)+4*y^2
dPy=diff(P,y)
% exp(x + y)
dQx=diff(Q,x)
% exp(x + y)
% dPy==dQx

% U(x,y)
% dUx=P, dUy=Q
syms C(y)
U=int(P(x,y),x)+C(y)
% exp(x + y) + C(y) + x^3
dUy=diff(U,y)
% diff(C(y), y) + exp(x + y)
dCy=simplify(dUy-Q)
% diff(C(y), y) - 4*y^2
C(y)=int(4*y^2,y)
% (4*y^3)/3
% exp(x + y) + x^3 + (4*y^3)/3 + C1
syms C1
eq1=exp(x + y) + x^3 + (4*y^3)/3 + C1
eq2=subs(eq1,[x y],[0 0])
% C1 + 1 => C1=-1
% exp(x + y) + x^3 + (4*y^3)/3 = 1