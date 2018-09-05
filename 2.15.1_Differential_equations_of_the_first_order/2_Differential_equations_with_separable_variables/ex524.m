% Solve equation
% x*sqrt(1+y^2)*dx+y*sqrt(1+x^2)*dy=0

% 1)
% x*dx/sqrt(1+x^2)+y*dy/sqrt(1+y^2)=0
syms x y dx dy;
eq1=int(x/sqrt(1+x^2),x)+int(y/sqrt(1+y^2),y)
% (x^2 + 1)^(1/2) + (y^2 + 1)^(1/2)
syms C;
eq2 = (x^2 + 1)^(1/2) + (y^2 + 1)^(1/2) + C == 0

% 2)
% x*sqrt(1+y^2)*dx+y*sqrt(1+x^2)*dy=0
% y'=-x*sqrt(1+y^2)/(y*sqrt(1+x^2))
syms x y(x)
eqn=diff(y(x),x)==-x*sqrt(1+y^2)/(y*sqrt(1+x^2))
ySol=dsolve(eqn)
 %  1i
 % -1i
 % ??