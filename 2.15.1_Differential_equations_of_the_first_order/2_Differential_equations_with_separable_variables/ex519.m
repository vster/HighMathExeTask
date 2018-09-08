% Solve equation
% (1+exp(2*x))*y^2*dy=exp(x)*dx
% y(0)=0

% 1)
syms x y pi;
% eq1=y^2*dy-exp(x)/(1+exp(2*x))*dx
eq2=int(y^2,y)-int(exp(x)/(1+exp(2*x)),x)
% y^3/3 - atan(exp(x))
syms C
eq3=y^3/3 - atan(exp(x))+C
eq4=subs(eq3,[x y],[0 0])
% C - pi/4 => C=pi/4
% y^3/3+pi/4=atan(exp(x))

% 2)
% (1+exp(2*x))*y^2*dy=exp(x)*dx
% y'=exp(x)/((1+exp(2*x))*y^2)
clear
syms x real;
syms y(x);
eqn = diff(y(x),x) == exp(x)/((1+exp(2*x))*y^2)
cond = y(0) == 0
% ySol=dsolve(eqn,cond)
% y = 3^(1/3)*(atan(exp(x)) - pi/4)^(1/3)
% y^3/3=atan(exp(x)) - pi/4

% Checking
syms x pi
ySol2 = 3^(1/sym(3))*(atan(exp(x)) - pi/4)^(1/sym(3))
eq5=diff(y(x),x) - exp(x)/((1+exp(2*x))*y^2)
eq6=simplify(subs(eq5,y,ySol2))
% 0