syms x y a;
F(x,y)=x^2+y^2+log(x^2+y^2)-a^2

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)

syms g(x);

Dgx=-x/g(x)
pretty(Dgx)
D2gx=simplify(diff(Dgx,x))
pretty(D2gx)

D2yx=-(y-x*Dyx)/y^2
pretty(D2yx)