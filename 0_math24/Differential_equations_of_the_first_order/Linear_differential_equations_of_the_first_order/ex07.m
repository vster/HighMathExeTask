% Find the general solution of the differential equation
% y=(2*y^4+2*x)*y'

clear
% 1)
% y'=y/(2*y^4+2*x)
syms x y(x)
eqn=diff(y(x))==y/(2*y^4+2*x)
ySol=dsolve(eqn)
%                                                                                   0
%                                                                             x^(1/4)
%                                                                            -x^(1/4)
% (2^(1/2)*x^(1/4)*(exp(2*C16 - log(x)/2) + (exp(4*C16 - log(x)) + 4)^(1/2))^(1/2))/2
% (2^(1/2)*x^(1/4)*(exp(2*C16 - log(x)/2) - (exp(4*C16 - log(x)) + 4)^(1/2))^(1/2))/2
%                                                                          x^(1/4)*1i
%                                                                         -x^(1/4)*1i

% 2)
% dy/dx=y/(2*y^4+2*x)
% dx/dy=(2*y^4+2*x)/y
syms y x(y)
eqn=diff(x(y))==(2*y^4+2*x)/y
xSol=dsolve(eqn)
% y^4 + C18*y^2

% 3)
% dx/dy-2*x/y=2*y^3
syms y x
a(y)=-2/y
f(y)=2*y^3
u(y)=exp(int(a(y),y))
% 1/y^2
syms C
x(y)=(int(u(y)*f(y),y)+C)/u(y)
% y^2*(y^2 + C)