syms x y;
z=log(tan(y/x))
D2zxy=simplify(diff(z,x,y))
% -(4*y*cos((2*y)/x) - 2*x*sin((2*y)/x))/(x^3*(cos((2*y)/x)^2 - 1))
pretty(D2zxy)