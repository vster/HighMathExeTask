clear
syms x y;
z=x^2*y
phi=cos(x)

Dz1=cdiff(z,phi)
% 2*x*cos(x) - x^2*sin(x)

function Dzx=cdiff(z,phi)
syms x y
dzx=diff(z,x);
dzy=diff(z,y);
dyx=diff(phi,x);
Dzx=simplify(dzx+dzy*dyx);
Dzx=simplify(subs(Dzx,y,phi));
end
