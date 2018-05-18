syms t x y z real;
r=[6*t, 3*t^2, t^3]
t1=1

% The unit vector of the binormal beta
beta=[ t^2/(t^2 + 2), -(2*t)/(t^2 + 2), 2/(t^2 + 2)]
pretty(beta)
% The equation of the contiguous plane of the helix
eq=simplify(beta(1)*(x-r(1))+beta(2)*(y-r(2))+beta(3)*(z-r(3)))
% (- 2*t^3 + x*t^2 - 2*y*t + 2*z)/(t^2 + 2)
simplify(eq==0)
pretty(eq==0)

eq1=subs(eq,t,t1)
% x/3 - (2*y)/3 + (2*z)/3 - 2/3
pretty(3*eq1==0)
% x - 2 y + 2 z - 2 == 0