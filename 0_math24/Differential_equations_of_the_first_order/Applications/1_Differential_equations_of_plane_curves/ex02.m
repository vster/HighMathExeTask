% Derive a differential equation for the family of plane 
% curves given by the equation
% y=x^2-C*x

syms x C
y=x^2-C*x
dy=diff(y,x)
% 2*x - C

% / dy=2*x-C => C=2*x-dy
% \ y=x^2-C*x

% y==x^2-(2*x-dy)*x=x^2-2*x^2+dy*x=dy*x-x^2
% dy*x-y=x^2

% Checking
syms x y(x)
eqn=diff(y)*x-y==x^2
ySol=dsolve(eqn)
% x^2 + C3*x
