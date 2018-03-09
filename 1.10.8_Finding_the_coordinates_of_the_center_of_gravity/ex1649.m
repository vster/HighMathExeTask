syms x a;
y=a*cosh(x/a)

dy=diff(y,x)

f1=1+dy^2
f1=factor(f1)
dL=simplify(sqrt(f1))
dL=cosh(x/a)

L=int(dL,x,-a,a)
L=simplify(L)

ya=1/L*int(y*dL,x,-a,a)
pretty(ya)