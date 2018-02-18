syms x y a;
F(x,y)=y/x+sin(y/x)-a

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)