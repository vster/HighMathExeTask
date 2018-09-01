% Solve equation
% x*dy/sqrt(1-y^2)+y*dx/sqrt(1-x^2)=0

% 1)
% dy/(y*sqrt(1-y^2))+dx/(x*sqrt(1-x^2))=0
clear
syms x y;
eq1=int(1/(y*sqrt(1-y^2)),y)+int(1/(x*sqrt(1-x^2)))
% log((1/x^2 - 1)^(1/2) - (1/x^2)^(1/2)) + log((1/y^2 - 1)^(1/2) - (1/y^2)^(1/2))
pretty(eq1)
% (1/y^2 - 1)^(1/2) - (1/y^2)^(1/2)*((1/x^2 - 1)^(1/2) - (1/x^2)^(1/2))=C
% (sqrt(1-y^2)/y-1/y)*(sqrt(1-x^2)/x-1/x)=C
% (sqrt(1-y^2)-1)*(sqrt(1-x^2)-1)=C*y*x

% 2)
% x*dy/sqrt(1-y^2)+y*dx/sqrt(1-x^2)=0
% y'=-(y*sqrt(1-y^2))/(x*sqrt(1-x^2))
clear
syms x y(x);
eqn=diff(y(x),x)==-(y*sqrt(1-y^2))/(x*sqrt(1-x^2))
ySol=dsolve(eqn)
%  1
%  0
% -1