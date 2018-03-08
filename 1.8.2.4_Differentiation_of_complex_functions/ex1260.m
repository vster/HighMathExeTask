syms x y alfa;
z=log((x-sqrt(x^2-y^2)/(x+sqrt(x^2-y^2))))
phi=x*cos(alfa)

dzx=simplify(diff(z,x))
pretty(dzx)
dzx=simplify(subs(dzx,y,phi))
pretty(dzx)

dzy=simplify(diff(z,y))
pretty(dzy)
dzy=simplify(subs(dzy,y,phi))
pretty(dzy)

dyx=diff(phi,x)

Dzx=simplify(dzx+dzy*dyx)
pretty(Dzx)