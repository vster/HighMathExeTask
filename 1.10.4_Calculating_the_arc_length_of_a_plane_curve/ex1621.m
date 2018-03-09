syms t;
x=9*(t-sin(t))
y=9*(1-cos(t))

ezplot(x,y)
hold on
plot(subs(x,t,pi),subs(y,t,pi),'ro')
hold off

c1=diff(x)^2+diff(y)^2
c1=factor(c1)
c1=simplify(c1)
c=sqrt(c1)

L=int(c,0,2*pi)