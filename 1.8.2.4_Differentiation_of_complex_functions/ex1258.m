syms x y;
z=(x^2-y)/(x^2+y)
phi(x)=3*x+1

dzx=diff(z,x)
dzy=diff(z,y)

dyx=diff(phi,x)

Dzx=simplify(dzx+dzy*dyx)
pretty(Dzx)
Dzx=simplify(-(2*x*(3*x - 2*phi))/(x^2 + phi)^2)
pretty(Dzx)