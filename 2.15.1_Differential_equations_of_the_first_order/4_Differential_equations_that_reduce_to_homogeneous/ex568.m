% 2*(x+y)*dy+(3*x+3*y-1)*dx=0
% y(0)=2

% y'=-(3*x+3*y-1)/(2*(x+y))
syms x y(x)
eqn=diff(y(x))==-(3*x+3*y-1)/(2*(x+y))
cond=y(0)==2
ySol=dsolve(eqn,cond)
% lambertw(0, exp(1 - x/2)) - x + 1

% Checking
eq10=2*(x+y)*diff(y(x))+(3*x+3*y-1)
eq11=subs(eq10,y,ySol)
eq11=simplify(eq11)
% 0