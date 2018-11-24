syms x y dx dy a;
z=cos(a*x+exp(y))
D3z1x2y=simplify(diff(z,x,y,y))
% -a*exp(y)*(cos(exp(y) + a*x) - exp(y)*sin(exp(y) + a*x))