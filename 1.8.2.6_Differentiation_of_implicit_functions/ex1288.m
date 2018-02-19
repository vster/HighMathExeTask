syms x y z dx dy;
F(x,y,z)=x+y+z-exp(z)

Dzx=simplify(-diff(F,x)/diff(F,z))
Dzy=simplify(-diff(F,y)/diff(F,z))

dz=simplify(Dzx*dx+Dzy*dy)
pretty(dz)