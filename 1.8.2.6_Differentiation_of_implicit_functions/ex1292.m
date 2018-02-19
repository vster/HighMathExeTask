syms x y z dx dy;
F(x,y,z)=x*y+x*z+y*z-1

Dzx=simplify(-diff(F,x)/diff(F,z))
Dzy=simplify(-diff(F,y)/diff(F,z))

dz=Dzx*dx+Dzy*dy
pretty(dz)