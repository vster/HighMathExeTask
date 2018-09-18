% Find the particular solution of the equation 
% (1 + exp(x))*y'= exp(x), 
% satisfying the initial condition y(0)=0

% 1)
% (1 + exp(x))*dy/dx= exp(x)
% dy-exp(x)*dx/(1 + exp(x))=0
clear
syms x y
eq1=int(1,y)-int(exp(x)/(1 + exp(x)),x)
% y - log(exp(x) + 1)
% y = log(exp(x) + 1)+C

% 2)
% y'= exp(x)/(1 + exp(x))
clear
syms x y(x)
eqn=diff(y(x),x)==exp(x)/(1 + exp(x))
ySol=dsolve(eqn)
% ???
