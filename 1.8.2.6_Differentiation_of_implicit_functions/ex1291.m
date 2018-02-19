syms x y z;
F(x,y,z)=x*sin(y)+y*sin(x)+z*sin(x)-1

Dzy=simplify(-diff(F,y)/diff(F,z))

