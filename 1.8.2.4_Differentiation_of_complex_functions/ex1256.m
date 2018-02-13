syms x y;
z=log(x^2-y^2)
dzx=diff(z,x)

y=exp(x);
z=log(x^2-y^2)
Dzx=diff(z,x)+diff(z,y)*diff(y,x)