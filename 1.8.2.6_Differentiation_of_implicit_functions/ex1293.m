syms x y z a;
F(x,y,z)=x*exp(y)+y*exp(x)+z*exp(x)-a

Dzx=simplify(-diff(F,x)/diff(F,z))