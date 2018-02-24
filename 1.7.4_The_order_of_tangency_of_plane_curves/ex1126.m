syms x;
f(x)=log(1+x)
g(x)=x-x^3
digits(4)

x0=0
y0=0

ezplot(f)
hold on
ezplot(g)
plot(x0,y0,'ro')
hold off

df=diff(f,x)
d2f=diff(f,x,2)
d3f=diff(f,x,3)
d4f=diff(f,x,4)

dg=diff(g,x)
d2g=diff(g,x,2)
d3g=diff(g,x,3)
d4g=diff(g,x,4)

f0=subs(f,x,x0)
g0=subs(g,x,x0)

df0=subs(df,x,x0)
dg0=subs(dg,x,x0)

d2f0=subs(d2f,x,x0)
d2g0=subs(d2g,x,x0)

d3f0=subs(d3f,x,x0)
d3g0=subs(d3g,x,x0)

d4f0=subs(d4f,x,x0)
d4g0=subs(d4g,x,x0)
