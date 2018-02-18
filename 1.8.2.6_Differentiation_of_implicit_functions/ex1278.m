syms x y a;
F(x,y)=x^2+y^2+log(x^2+y^2)-a^2

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)