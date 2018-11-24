clear
syms x y;
z=log(x^2-y^2)
g=exp(x);

Dzx1=cdiff(z,g)
%(2*x - 2*y*exp(x))/(x^2 - y^2)

function Dzx=cdiff(z,g)
syms x y
dzx=diff(z,x);
dzy=diff(z,y);
dyx=diff(g,x);
Dzx=simplify(dzx+dzy*dyx);
end