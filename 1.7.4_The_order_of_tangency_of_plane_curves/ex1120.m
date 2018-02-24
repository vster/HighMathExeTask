syms x a;
f=exp(a*x)
g=2*x+1
x0=0
y0=1

ezplot(f)
hold on
ezplot(g)
plot(x0,y0,'ro')
hold off

f0=subs(f,x,x0)
g0=subs(g,x,x0)

df=diff(f,x)
dg=diff(g,x)

df0=subs(df,x,x0)
dg0=subs(dg,x,x0)