syms t a
x=a*cos(t)^3
y=a*sin(t)^3
Dyx=diff(y)/diff(x)
Dyx2=diff(Dyx)/diff(x)
Dyx2=simplify(Dyx2)
