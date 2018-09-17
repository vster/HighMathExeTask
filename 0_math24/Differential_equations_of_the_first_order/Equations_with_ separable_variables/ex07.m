% Solve the equation 
% y*(1 + x*y)*dx = x*(1-x*y)*dy

% 1)
clear
syms x y dx dy
eq1=y*(1 + x*y)*dx - x*(1-x*y)*dy
syms t dt
y1=t/x
dy1=(x*dt-t*dx)/x^2
eq2=subs(eq1,[y dy],[y1 dy1])
eq2=simplify(eq2)
% (2*dx*t - dt*x + dt*t*x)/x
% x=0
% 2*dx*t - dt*x + dt*t*x=0
% 2*dx/x + dt*(1-1/t)=0
eq3=int(2/x,x)+int(1-1/t,t)
% t - log(t) + 2*log(x)
% x*y -log(x*y)+ 2*log(x)
% x*y - log(y) + log(x)
% log(y/x)-x*y=C

% 2)
% y*(1 + x*y)*dx = x*(1-x*y)*dy
% y'=y*(1 + x*y)/(x*(1-x*y))
syms x y(x)
eqn=diff(y(x))==y*(1 + x*y)/(x*(1-x*y))
ySol=dsolve(eqn)
%                       0
% -lambertw(0, -C8*x^2)/x