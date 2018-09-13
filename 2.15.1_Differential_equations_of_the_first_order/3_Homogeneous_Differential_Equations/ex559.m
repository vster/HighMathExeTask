% x*y'=x*exp(y/x)+y
% y(1)=0

clear
% 1)
% y'=exp(y/x)+y/x
syms x y(x)
eqn=diff(y(x),x)==exp(y/x)+y/x
cond=y(1)==0
ySol=dsolve(eqn,cond)
% -x*log(1 - log(x))

% Checking
eq10=diff(y)-exp(y/x)-y/x
eq11=subs(eq10,y,ySol)
% 0