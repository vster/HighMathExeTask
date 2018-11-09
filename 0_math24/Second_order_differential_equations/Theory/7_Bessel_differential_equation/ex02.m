clear
syms x y(x)
eqn=x^2*diff(y,x,2)+2*x*diff(y,x)+(x^2-1)*y
ySol=simplify(dsolve(eqn))
% -(C7*besselj(-5^(1/2)/2, x) - besselj(5^(1/2)/2, x)*(C7*cos((pi*5^(1/2))/2) + C6*sin((pi*5^(1/2))/2)))/(x^(1/2)*sin((pi*5^(1/2))/2))

% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0