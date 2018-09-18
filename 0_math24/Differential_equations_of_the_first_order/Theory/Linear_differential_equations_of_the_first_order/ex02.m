% Solve equation
% x*y'=y+2*x^3

% 1)
clear
% y'=y/x+2*x^2
syms x y(x)
eqn=diff(y(x))==y/x+2*x^2
ySol=dsolve(eqn)
% x^3 + C9*x

% 2)
% x*y'=y+2*x^3
% x*y'=y => x*dy/dx-y=0 
% dy/y-dx/x
syms x y
eq1=int(1/y,y)-int(1/x,x)
% y=C*x
% y=C(x)*x
% y'=C'(x)*x+C(x)
% x^2*C'(x)*x+x*C(x)=C(x)*x+2*x^3 => C'(x)=2*x => C(x)=x^2+C1
% y=x^3+C1*x
