syms t;
x=acos(sqrt(t))
y=sqrt(t-t^2)
Dyx=diff(y)/diff(x)
Dyx2=diff(Dyx)/diff(x)
Dyx2=simplify(Dyx2)