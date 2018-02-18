syms x y z dx dy;
F(x,y,z)=x*y*z-x-y-z;

Dzx=simplify(-diff(F,x)/diff(F,z))
Dzy=simplify(-diff(F,y)/diff(F,z))

dz=Dzx*dx+Dzy*dy
pretty(dz)
