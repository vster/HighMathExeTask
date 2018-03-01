syms t a R x y z real;
assume(R>a)
r=[a*cos(t), a*sin(t), sqrt(R^2-a^2)*t]

beta=[ (sin(t)*(R^2 - a^2)^(1/2))/R, -(cos(t)*(R^2 - a^2)^(1/2))/R, a/R]
pretty(beta)

eq=simplify(beta(1)*(x-r(1))+beta(2)*(y-r(2))+beta(3)*(z-r(3)))
simplify(eq==0)
pretty(eq==0)