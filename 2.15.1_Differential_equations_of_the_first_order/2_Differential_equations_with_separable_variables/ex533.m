% Solve equation
% (sqrt(x*y)-sqrt(x))dx+(sqrt(x*y)+sqrt(y))dy=0

% sqrt(x)*(sqrt(y)-1)dx+sqrt(y)*(sqrt(x)+1)dy=0
% sqrt(x)*dx/(sqrt(x)+1)+sqrt(y)*dy/(sqrt(y)-1)=0
% 1)
syms x y;
eq1=int(sqrt(x)/(sqrt(x)+1),x)+int(sqrt(y)/(sqrt(y)-1),y)
% x + y + 2*log(x^(1/2) + 1) + 2*log(y^(1/2) - 1) - 2*x^(1/2) + 2*y^(1/2)

% 2)
% (sqrt(x*y)-sqrt(x))dx+(sqrt(x*y)+sqrt(y))dy=0
% y'=-(sqrt(x*y)-sqrt(x))/(sqrt(x*y)+sqrt(y))
clear
syms x y(x);
eqn=diff(y(x),x)==-(sqrt(x*y)-sqrt(x))/(sqrt(x*y)+sqrt(y))
ySol=dsolve(eqn)