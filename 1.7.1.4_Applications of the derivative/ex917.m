syms x y p x0 y0;
F(x,y)=y^2-2*p*x
M=[x0 y0]

Dyx=-diff(F,x)/diff(F,y)

y=y0-y0/p*(x-x0)


