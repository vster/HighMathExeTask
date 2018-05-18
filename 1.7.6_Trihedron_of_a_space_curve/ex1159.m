syms t a R x y z real;
assume(R>a)
r=[a*cos(t), a*sin(t), sqrt(R^2-a^2)*t]

% The unit vector of the principal normal nu
nu=[ -cos(t), -sin(t), 0]
% The equation of the rectifying plane of the helix
eq=simplify(nu(1)*(x-r(1))+nu(2)*(y-r(2))+nu(3)*(z-r(3)))
pretty(eq==0)
% x*cos(t) + y*sin(t) - a = 0