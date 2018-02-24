syms x;
f(x)=1+cos(x)
g(x)=2-x^2
digits(4)

x0=0
y0=2

ezplot(f)
hold on
ezplot(g)
plot(x0,y0,'ro')
hold off

df=diff(f,x)
d2f=diff(f,x,2)

dg=diff(g,x)
d2g=diff(g,x,2)

f0=subs(f,x,x0)
g0=subs(g,x,x0)

df0=subs(df,x,x0)
dg0=subs(dg,x,x0)

d2f0=subs(d2f,x,x0)
d2g0=subs(d2g,x,x0)
