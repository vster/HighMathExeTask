syms t a
x=a*cos(t)
y=a*sin(t)
Dyx=diff(y,t)/diff(x,t)
Dyx=simplify(Dyx)
ezplot(x,y)