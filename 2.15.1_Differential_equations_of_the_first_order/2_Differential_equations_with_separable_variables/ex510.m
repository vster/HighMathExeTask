% Find the particular solution of the differential equation
% (1+x^2)dy+y*dx=0 under the initial condition y(1)=1.

% 1)
% (1+x^2)dy+y*dx=0
% dy/y+dx/(1+x^2)=0
clear
syms x y real;
eq1=int(1/y,y)+int(1/(1+x^2),x)
% atan(x) + log(y) = C
syms C;
eq2=atan(x) + log(y)-C
eq3=subs(eq2,[x y],[1 1])
% pi/4 - C = 0 => C=pi/4
% atan(x) + log(y) = pi/4
% y = exp(pi/4-atan(x))

% 2)
clear
syms x real;
syms y(x);
eqn = diff(y,x) == -y/(1+x^2)
cond = y(1) == 1;
ySol(x)=dsolve(eqn,cond)
% exp(pi/4)*exp(-atan(x))