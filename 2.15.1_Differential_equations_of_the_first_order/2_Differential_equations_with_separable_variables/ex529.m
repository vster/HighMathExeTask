% Solve equation
% y'=sinh(x+y)+sinh(x-y)

% 1)
syms x y;
eq1=sinh(x+y)+sinh(x-y)
eq1=simplify(eq1)
% dy/dx=2*cosh(y)*sinh(x)
% dy/cosh(y)=2*sinh(x)*dx
eq2=int(1/cosh(y),y)-int(2*sinh(x),x)
% eq3=atan(exp(y)) - cosh(x) - C
% y=log(tan(cosh(x) + C))

% 2)
clear
syms x y(x);
eqn=diff(y(x),x)==2*cosh(y)*sinh(x)
ySol=dsolve(eqn)
% log(tan(C10 + cosh(x)))
%               (pi*1i)/2
%              -(pi*1i)/2

