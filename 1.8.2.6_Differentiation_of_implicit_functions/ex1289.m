syms x y z dx dy;
F(x,y,z)=x^3+y^3+z^3-3*x*y*z

Dzx=simplify(-diff(F,x)/diff(F,z))
Dzy=simplify(-diff(F,y)/diff(F,z))

dz=simplify(Dzx*dx+Dzy*dy)
pretty(dz)