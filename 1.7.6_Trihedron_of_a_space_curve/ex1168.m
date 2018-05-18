syms t x y z real;
r=[6*t, 3*t^2, t^3]
t1=1

% Tangential unit vector tau
tau=[ 2/(t^2 + 2), (2*t)/(t^2 + 2), t^2/(t^2 + 2)]
% Equation of the normal plane of the helix
eq=simplify(tau(1)*(x-r(1))+tau(2)*(y-r(2))+tau(3)*(z-r(3)))
simplify(eq==0)
pretty(eq==0)

eq1=subs(eq,t,t1)
pretty(3*eq1==0)
% 2 x + 2 y + z - 19 == 0