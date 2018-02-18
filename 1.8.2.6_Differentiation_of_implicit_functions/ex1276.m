syms x y z a;
F(x,y,z)=z^3-3*x*y*z-a^2;

DFx=diff(F,x)
DFy=diff(F,y)
DFz=diff(F,z)

Dzx=simplify(-DFx/DFz)
Dzy=simplify(-DFy/DFz)

Dzx=simplify(-diff(F,x)/diff(F,z))
Dzy=simplify(-diff(F,y)/diff(F,z))