clear
syms x y(x)
eqn=x^2*diff(y,x,2)+x*diff(y,x)+(3*x^2-2)*y
ySol=simplify(dsolve(eqn))
% ((C5*cos(pi*2^(1/2)) + C4*sin(pi*2^(1/2)))*besselj(2^(1/2), 3^(1/2)*x))/sin(pi*2^(1/2)) - (C5*besselj(-2^(1/2), 3^(1/2)*x))/sin(pi*2^(1/2))

% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0