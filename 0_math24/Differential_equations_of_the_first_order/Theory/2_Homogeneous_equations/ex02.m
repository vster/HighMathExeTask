% Solve the differential equation
% x*y'=y*log(y/x)

% 1)
clear
% y'=y/x*log(y/x)
syms x y(x)
eqn=diff(y(x))==y/x*log(y/x)
ySol=dsolve(eqn)
%                      x*exp(1)
%  x*exp(exp(C11 + log(x)) + 1) => x*exp(C12*x+1)

% 2)
syms x y dx dy
% x*dy=y*log(y/x)*dx
eq1=x*dy-y*log(y/x)*dx
syms u du
y1=u*x
dy1=u*dx+du*x
eq2=subs(eq1,[y dy],[y1 dy1])
eq2=expand(eq2)
% du*x^2 + dx*u*x - dx*u*x*log(u)
% du/u+dx/x*(1-log(u))
% du/(u*(1-log(u)))+dx/x
eq3=int(1/(u*(1-log(u))),u)+int(1/x,x)
% log(x) - log(log(u) - 1)
% log(x) - log(log(u) - 1) = log(C)
% x= C*(log(u)-1)
% log(y/x)-1=C1*x
% y=x*exp(C1*x+1)
