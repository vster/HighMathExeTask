% The family of curves is given by the function 
% y=1/C*cos(C*x+alfa)
% where C is a parameter and alfa is some arbitrary angle. 
% Write a differential equation for this family of plane curves.

syms x C alfa
y=1/C*cos(C*x+alfa)

dy=diff(y,x)
% -sin(alfa + C*x)

% / y=1/C*cos(C*x+alfa)
% \ dy=-sin(alfa + C*x)

% / (y*C)^2=cos(C*x+alfa)^2
% \ dy^2=sin(alfa + C*x)^2

% y^2*C^2+dy^2=1=> C=sqrt(1-dy^2)/y
% dy=-sin(x*sqrt(1-dy^2)/y+alfa)

% Checking
syms x y(x) alfa
eqn=diff(y,x)==-sin(x*sqrt(1-diff(y,x)^2)/y+alfa)
ySol=dsolve(eqn)
% ???
