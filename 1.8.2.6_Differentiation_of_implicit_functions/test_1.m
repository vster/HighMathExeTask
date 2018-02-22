syms x y;
F(x,y)=3*x^2*y^2-5*x+sin(y)-3*y+1

ezsurf(F)

DFx=diff(F,x)
DFy=diff(F,y)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)

syms g(x);
Dyx=-(6*x*g(x)^2-5)/(g(x)*x^2*6+cos(g(x))-3)
pretty(Dyx)

D2yx=simplify(diff(Dyx,x))
pretty(D2yx)
