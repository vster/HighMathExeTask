syms t;
x=exp(t)*cos(t)
y=exp(t)*sin(t)

ezplot(x,y)

c=simplify(sqrt(diff(x)^2+diff(y)^2))

L=int(c,0,log(pi))
vpa(L)