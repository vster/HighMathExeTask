% Find a particular integral of the equation
% y'*cos(x)=y/log(y) 
% satisfying the initial condition y(0)=1

% 1)
% y'=dy/dx
% cos(x)*dy/dx=y/log(y)
% log(y)*dy/y=dx/cos(x)
% int()log(y)/y*dy=int()dx/cos(x)+C
clear
syms x y
eq1=int(log(y)/y,y)-int(1/cos(x),x)
syms C
eq2 = log(y)^2/2 - log(sin(x) + 1) - log(1/cos(x)) +C
eq2 = simplify(eq2)
% C - log((sin(x) + 1)/cos(x)) + log(y)^2/2
eq3=subs(eq2,[x y],[0 1])
C=0

eq4=(sin(x) + 1)/cos(x)-tan(x/2+pi/4)
simplify(eq4)
% 0
% log(y)^2/2 = log((sin(x) + 1)/cos(x)) = log(tan(x/2+pi/4))

% 2)
clear
syms x real;
syms y(x);
eqn=diff(y,x) == y/(log(y)*cos(x))
cond = y(0) == 1
ySol(x) = dsolve(eqn)
% [ empty sym ]
% ????
