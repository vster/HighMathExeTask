% Find the general solution of the differential equation 
% (x^3 + x*y^2)*y'= y^3

% 1)
% y'= y^3/(x^3 + x*y^2)
clear
syms x y(x)
eqn=diff(y(x))==y^3/(x^3 + x*y^2)
ySol=dsolve(eqn)
%                                                     0
% x*exp(C20 - wrightOmega(2*C20 - 2*log(x))/2 - log(x))

% 2)
clear
% x'=(x^3 + x*y^2)/y^3
syms y x(y)
eqn=diff(x(y))==(x^3 + x*y^2)/y^3
xSol=dsolve(eqn)
%                                         0
%   (2^(1/2)*y*(-1/(C23 + log(y)))^(1/2))/2
%  -(2^(1/2)*y*(-1/(C23 + log(y)))^(1/2))/2

% 3)
% (x^3 + x*y^2)*dy= y^3*dx

syms x y dx dy
eq1=(x^3 + x*y^2)*dy-y^3*dx
syms u du
y1=u*x
dy1=u*dx+du*x
eq2=subs(eq1,[y dy],[y1 dy1])
eq2=expand(eq2)
% du*u^2*x^4 + dx*u*x^3 + du*x^4
% du*(u^2+1)/u+dx/x
eq3=int((u^2+1)/u,u)+int(1/x,x)
% log(u) + log(x) + u^2/2
% log(y/x)+log(x)+(y/x)^2/2=log(C1)
% log(y)+(y/x)^2/2=log(C1)
% y=C1*exp(-y^2/(2*x^2))