% Solve equation
% (4+y^2)/sqrt(x^2+4*x+13)=(3*y+2)/(x+1)*y'

% 1)
% (4+y^2)/sqrt(x^2+4*x+13)=(3*y+2)/(x+1)*dy/dx
% (x+1)/sqrt(x^2+4*x+13)*dx-(3*y+2)dy/(4+y^2)=0
syms x y;
eq1=int((x+1)/sqrt(x^2+4*x+13),x)-int((3*y+2)/(4+y^2),y)
% (x^2 + 4*x + 13)^(1/2) - (3*log(y^2 + 4))/2 - log(x + (x^2 + 4*x + 13)^(1/2) + 2) - atan(y/2)
% (3*log(y^2+4))/2+atan(y/2)=(x^2+4*x+13)^(1/2)-log(x+(x^2+4*x+13)^(1/2)+2)+C

% 2)
clear
% y'=(4+y^2)*(x+1)/(sqrt(x^2+4*x+13)*(3*y+2))
syms x y(x);
eqn=diff(y(x),x)==(4+y^2)*(x+1)/(sqrt(x^2+4*x+13)*(3*y+2))
ySol=dsolve(eqn)
% atan(y/2) + (3*log(y^2 + 4))/2 == C10 - log(x + (x^2 + 4*x + 13)^(1/2) + 2) + (x^2 + 4*x + 13)^(1/2)