syms t
x=cosh(t)
y=sinh(t)
Dyx=diff(y,t)/diff(x,t)
Dyx=simplify(Dyx)
ezplot(x,y)