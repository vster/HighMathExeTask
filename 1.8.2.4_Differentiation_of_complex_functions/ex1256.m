syms x y;
z=log(x^2-y^2)
g(x)=exp(x);

dzx=diff(z,x)
dzy=diff(z,y)

dyx=diff(g,x)

Dzx=simplify(dzx+dzy*dyx)
pretty(Dzx)