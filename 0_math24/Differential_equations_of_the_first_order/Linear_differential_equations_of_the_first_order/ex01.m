% Solve equation
% y'-y-x*exp(x)=0

% 1)
clear
% y'=y+x*exp(x)
syms x y(x)
eqn=diff(y(x))==y+x*exp(x)
ySol=dsolve(eqn)
% (x^2*exp(x))/2 + C8*exp(x)

% 2)
% y'-y=x*exp(x)
syms x y
a(x)=sym(-1)
f(x)=x*exp(x)
u(x)=exp(int(a(x),x))
% exp(-x)
syms C
y(x)=(int(u(x)*f(x),x)+C)/u(x)
% exp(x)*(x^2/2 + C)