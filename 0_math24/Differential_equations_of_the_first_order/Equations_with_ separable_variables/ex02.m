% Solve the differential equation
% (x^2+4)*y'=2*x*y

% (x^2+4)*dy=2*x*y**dx
% dy/y=2*x*dx/(x^2+4)

clear
% 1)
syms x y;
eq1=int(1/y,y)-int(2*x/(x^2+4),x)
% log(y) - log(x^2 + 4)
% log(y)=log(x^2 + 4)+log(C)
% y=C*(x^2 + 4)

% 2)
syms x y(x)
% y'=2*x*y/(x^2+4)
eqv=diff(y(x))==2*x*y/(x^2+4)
ySol=dsolve(eqv)
% ySol=C1*(x^2 + 4)