% Solve the differential equation 
% (x*y + y^2)*y'= y^2

% 1)
clear
% y'=y^2/(x*y + y^2)
syms x y(x)
eqn=diff(y(x))==y^2/(x*y + y^2)
ySol=dsolve(eqn)
%                     0
%  x/lambertw(0, C14*x)

% 2)
% (x*y + y^2)*dy=y^2*dx
syms x y dx dy
eq1=(x*y + y^2)*dy-y^2*dx
syms u du
y1=u*x
dy1=u*dx+du*x
eq2=subs(eq1,[y dy],[y1 dy1])
eq2=expand(eq2)
% dx*u^3*x^2 + du*u^2*x^3 + du*u*x^3
% dx/x + du*(u + 1)/u^2
eq3=int(1/x,x)+int((u + 1)/u^2,u)
% log(u) + log(x) - 1/u
% log(y/x)+log(x)-x/y=C1
% log(y)=x/y+C1
% x=y*(log(y)+C2)