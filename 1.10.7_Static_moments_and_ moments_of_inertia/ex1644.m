syms x a real;
y=a/2*(exp(x/a)+exp(-x/a))

y1=subs(y,a,1)
% ezplot(y1)

dy=diff(y)

f1=1+dy^2
f1=factor(f1)
pretty(f1)

dL=1/2*(exp(2*x/a)+1)/sqrt(exp(2*x/a))
pretty(f)

f=simplify(y*dL)
Mx=int(f,0,a)

g=simplify(y^2*dL)
pretty(g)
Ix=int(g,0,a)