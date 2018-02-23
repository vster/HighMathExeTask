syms x y a;
F(x,y)=y/x+sin(y/x)-a

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)

syms g(x);
Dgx=g(x)/x
pretty(Dgx)
D2gx=simplify(diff(Dgx,x))
pretty(D2gx)

D2yx=Dyx/x-y/x^2
pretty(D2yx)

F1=subs(F,a,1)
ezsurf(F1)