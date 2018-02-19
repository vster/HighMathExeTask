syms x y z dx dy;
F(x,y,z)=x-z*log(z/y)

Dzx=simplify(-diff(F,x)/diff(F,z))
Dzy=simplify(-diff(F,y)/diff(F,z))

dz=simplify(Dzx*dx+Dzy*dy)
pretty(dz)