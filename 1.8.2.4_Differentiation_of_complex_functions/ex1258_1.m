syms x y;
z=(x^2-y)/(x^2+y)
phi(x)=3*x+1

Dzx1=cdiff(z,phi)
% (2*x*(3*x + 2))/(x^2 + 3*x + 1)^2

function Dzx=cdiff(z,phi)
syms x y
dzx=diff(z,x);
dzy=diff(z,y);
dyx=diff(phi,x);
Dzx=simplify(dzx+dzy*dyx);
Dzx=simplify(subs(Dzx,y,phi));
end