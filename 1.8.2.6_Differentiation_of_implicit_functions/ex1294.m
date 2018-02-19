syms x y z;
F(x,y,z)=x+atan(y/(z-x))

Dzx=simplify(-diff(F,x)/diff(F,z))