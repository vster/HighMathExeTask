syms t;
x=t^3/3-t
y=t^2+2

ezplot(x,y)

c=sqrt(diff(x)^2+diff(y)^2)
L=int(c,0,3)