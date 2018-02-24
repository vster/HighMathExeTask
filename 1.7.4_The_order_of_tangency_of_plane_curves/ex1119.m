syms x;
e=exp(1)
f(x)=exp(-x)
g(x)=1/(e*x)
digits(4)

x0=1
y0=subs(g,x,x0)

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
vpa(f0)
g0=subs(g,x,x0)
vpa(g0)

df0=subs(df,x,x0)
vpa(df0)
dg0=subs(dg,x,x0)
vpa(dg0)

d2f0=subs(d2f,x,x0)
vpa(d2f0)
d2g0=subs(d2g,x,x0)
vpa(d2g0)

