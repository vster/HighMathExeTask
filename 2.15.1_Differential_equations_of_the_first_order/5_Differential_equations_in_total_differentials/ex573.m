% (x+y-1)*dx+(exp(y)+x)*dy=0

clear
% 1)
syms x y(x)
% y'=-(x+y-1)/(exp(y)+x)
eqn=diff(y(x))==-(x+y-1)/(exp(y)+x)
ySol=dsolve(eqn)
% solve(exp(y) + x*(y - 1) == - x^2/2 - C12, y)
% exp(y) + x*(y - 1) == - x^2/2 - C12
% exp(y) + x^2/2 + x*y - x == C12

% 2)
syms x y
P(x,y)=x+y-1
Q(x,y)=exp(y)+x
dPy=diff(P,y)
% 1
dQx=diff(Q,x)
% 1
% dPy==dQx

% U(x,y)
% dUx=P, dUy=Q
U=int(P(x,y),x,0,x)+int(Q(0,y),y,0,y)
% x^2/2 + (y - 1)*x + exp(y) - 1
% exp(y) + x^2/2 + y*x - x == C