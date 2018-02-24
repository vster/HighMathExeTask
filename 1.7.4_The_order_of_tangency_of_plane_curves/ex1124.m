syms x;
f(x,y)=x^2+y^2-2*y
g(x,y)=x^2+y^2-4*y

x0=0
y0=0
M=[x0 y0]

ezplot(f)
hold on
ezplot(g)
plot(x0,y0,'ro')
hold off

df=-diff(f,x)/diff(f,y)
dg=-diff(g,x)/diff(g,y)

f0=subs(f,[x y],M)
g0=subs(g,[x y],M)

df0=subs(df,[x y],M)
dg0=subs(dg,[x y],M)