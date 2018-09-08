% Find the common integral of the equation
% y'=tan(x)*tan(y)

% 1)
% y'=dy/dx
% dy/dx=tan(x)*tan(y)
% dy/tan(y)=tan(x)*dx
% int()dy/tan(y)=int()tan(x)dx
clear
syms x y real;
eq1=int(1/tan(y),y)-int(tan(x),x)
% log(cos(x)) - log(tan(y)^2 + 1)/2 + log(tan(y))
syms C;
eq2=log(cos(x)) - log(tan(y)^2 + 1)/2 + log(tan(y))-log(C)
eq2=simplify(exp(eq2))
% (cos(x)*tan(y))/(tan(y)^2 + 1)^(1/2)=C
% tan(y))/(tan(y)^2 + 1)^(1/2) = sin(y)
% cos(x)*sin(y)=C

% 2)
clear
syms x real;
syms y(x);
eqn = diff(y,x) == tan(x)*tan(y)
ySol(x)=dsolve(eqn)
%                                                                          0
% piecewise(~x in Dom::ImageSet(pi*(k + 1/2), k, Z_), asin(exp(C15)/cos(x)))
% y=asin(exp(C15)/cos(x))
% sin(y)*cos(x)=exp(C15)

% Checking
syms C15
ySol2=asin(exp(C15)/cos(x))
eq5=diff(ySol2,x)-tan(x)*tan(ySol2)
eq5=simplify(eq5)
% 0

