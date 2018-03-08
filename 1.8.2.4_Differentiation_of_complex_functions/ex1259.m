syms x y;
z=x^2*y
phi(x)=cos(x)

dzx=diff(z,x)
dzx=2*x*phi
dzx=simplify(dzx)

dzy=diff(z,y)

dyx=diff(phi,x)

Dzx=simplify(dzx+dzy*dyx)
pretty(Dzx)
