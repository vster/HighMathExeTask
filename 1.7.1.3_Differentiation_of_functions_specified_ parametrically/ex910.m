syms t
x=exp(-t)*sin(t)
y=exp(t)*cos(t)
Dyx=diff(y,t)/diff(x,t)
Dyx=simplify(Dyx)
ezplot(x,y)