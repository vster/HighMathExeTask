% y'=y/x+cos(y/x)

% 1)
clear
syms x y(x);
eqn=diff(y,x)==y/x+cos(y/x)
ySol=dsolve(eqn)
ySol=simplify(ySol)
%                                         (pi*x)/2
%  -x*log((1 + x*exp(C35)*1i)/(x*exp(C35) + 1i))*1i

% 2)
syms x y dx dy;
eq1=dy-(y/x+cos(y/x))*dx
syms t dt
y1=x*t
dy1=dx*t+x*dt
eq2=subs(eq1,[y dy],[y1 dy1])
eq2=simplify(eq2)
% dt*x - dx*cos(t) = 0
% dt/cos(t)-dx/x = 0
eq3=int(1/cos(t),t)-int(1/x,x)
syms C
% log(1/cos(t)) + log(sin(t) + 1) - log(x)+log(C)
eq4=log(1/cos(t)) + log(sin(t) + 1) - log(x)+log(C)
eq5=simplify(exp(eq4))
% (C*(sin(t) + 1))/(x*cos(t))=1
% C*sin(y/x)+1=x*cos(y/x)