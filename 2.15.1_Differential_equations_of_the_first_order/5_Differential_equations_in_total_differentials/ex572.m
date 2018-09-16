% (exp(x)+y+sin(y))*dx+(exp(y)+x+x*cos(y))*dy

clear
% 1)
% y'=-(exp(x)+y+sin(y))/(exp(y)+x+x*cos(y))
syms x y(x)
eqn=diff(y(x))==-(exp(x)+y+sin(y))/(exp(y)+x+x*cos(y))
ySol=dsolve(eqn)
% solve(exp(y) + x*(y + sin(y)) == - C11 - exp(x), y)
% exp(y) + x*(y + sin(y)) == - C11 - exp(x)
% exp(x) + x*y + x*sin(y) + exp(y) == C

% 2)
syms x y
P(x,y)=exp(x)+y+sin(y)  % x
Q(x,y)=exp(y)+x+x*cos(y) % y
dPy=diff(P,y)
% cos(y) + 1
dQx=diff(Q,x)
% cos(y) + 1
% dPy==dQx

% U(x,y)
% dUx=P, dUy=Q
U=int(P(x,y),x)
% exp(x) + x*(y + sin(y))
syms C(y)
U=U+C(y)
% C(y) + exp(x) + x*(y + sin(y))

% diff(C(y), y) + x*(cos(y) + 1) == exp(y)+x+x*cos(y) => 
% dCy=exp(y) =>
C(y)=exp(y)
U=exp(x) + x*(y + sin(y))+exp(y)
% exp(x) + x*y + x*sin(y)+exp(y) = C