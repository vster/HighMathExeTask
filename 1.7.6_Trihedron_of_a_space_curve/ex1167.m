syms t x y z real;
r=[6*t, 3*t^2, t^3]
t1=1

% The unit vector of the principal normal nu
nu=[ -(2*t)/(t^2 + 2), -(t^2 - 2)/(t^2 + 2), (2*t)/(t^2 + 2)]
% The equation of the rectifying plane of the helix
eq=simplify(nu(1)*(x-r(1))+nu(2)*(y-r(2))+nu(3)*(z-r(3)))
simplify(eq==0)
pretty(eq==0)

eq1=subs(eq,t,t1)
pretty(3*eq1==0)
% y - 2 x + 2 z + 7 == 0
