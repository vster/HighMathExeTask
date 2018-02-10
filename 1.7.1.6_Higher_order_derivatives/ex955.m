syms a t
x=a*(t-sin(t))
y=a*(1-cos(t))
Dyx=diff(y)/diff(x)
Dyx2=diff(Dyx)/diff(x)
Dyx2=simplify(Dyx2)
