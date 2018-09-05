% Solve equation
% y'=exp(x+y)+exp(x-y)
% y(0)=0

% 1)
% dy/dx=exp(x)*exp(y)+exp(x)*exp(-y)
% dy/(exp(y)+exp(-y))-exp(x)*dx=0
clear
syms x y;
eq1=int(1/(exp(y)+exp(-y)),y)-int(exp(x),x)
% atan(exp(y)) - exp(x)
syms C;
eq2 = atan(exp(y)) - exp(x)+C
eq3=subs(eq2,[x y],[0 0])
% C + pi/4 - 1
% C=1-pi/4
% atan(exp(y)) = exp(x)-1+pi/4
% y=log(tan(exp(x)-1+pi/4))

% 2)
clear
syms x y(x);
eqn=diff(y(x),x)==exp(x)*(exp(y)+exp(-y))
cond=y(0)==0;
ySol=dsolve(eqn,cond)
% y=log(tan(pi/4 + exp(x) - 1))

