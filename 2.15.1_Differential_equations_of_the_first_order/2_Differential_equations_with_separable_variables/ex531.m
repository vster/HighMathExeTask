% Solve equation
% dx/(x*(y-1))+dy/(y*(x+2))=0
% y(1)=1

% 1)
% dx*(x+2)/x+dy*(y-1)/y=0
syms x y;
eq1=int((x+2)/x,x)+int((y-1)/y,y)
% x + y + 2*log(x) - log(y)
syms C;
eq2=eq1+C
eq3=subs(eq2,[x y],[1 1])
% C+2 => C=-2
% x + y + 2*log(x) - log(y) = 2

% 2)
% dy/(y*(x+2))=dx/(x*(1-y))
% y'=(y*(x+2))/(x*(1-y))
clear
syms x y(x);
eqn=diff(y(x),x)==(y*(x+2))/(x*(1-y))
cond=y(1)==1
ySol=dsolve(eqn,cond)
% -lambertw(0, -x^2*exp(-2)*exp(x))