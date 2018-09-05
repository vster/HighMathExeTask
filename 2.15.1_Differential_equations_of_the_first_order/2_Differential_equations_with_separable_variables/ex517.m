% Solve equation
% 3*exp(x)*tan(y)dx+(1+exp(x))*sec(y)^2*dy=0
% y(0)=pi/4

% 1)
% sec(y)^2/tan(y)*dy+3*exp(x)/(1+exp(x))*dx=0
syms x y;
eq1=int(1/(cos(y)^2*tan(y)),y)+int(3*exp(x)/(1+exp(x)),x)
% log(tan(y)) + 3*log(exp(x) + 1)
syms C;
eq2 = log(tan(y)) + 3*log(exp(x) + 1) + log(C)
eq3=subs(eq2,[x y],[0 pi/4])
% log(C) + 3*log(2)
eq4 = log(tan(y)) + 3*log(exp(x) + 1) - 3*log(sym(2))
%tan(y)*(exp(x)+1)^3=8

% 2)
% 3*exp(x)*tan(y)dx+(1+exp(x))*sec(y)^2*dy=0
% dy/dx=-3*exp(x)*tan(y)*cos(y)^2/(1+exp(x))
syms x y(x);
eqn = diff(y(x),x) == -3*exp(x)*tan(y)*cos(y)^2/(1+exp(x))
cond = y(0) == pi/4
ySol = dsolve(eqn,cond)
% y = pi/2 - acos(tanh(log(8) - 3*log(exp(x) + 1)))/2 
