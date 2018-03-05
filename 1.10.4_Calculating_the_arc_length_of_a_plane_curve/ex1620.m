syms t;
x=8*sin(t)+6*cos(t)
y=6*sin(t)-8*cos(t)

ezplot(x,y)

c=sqrt(diff(x)^2+diff(y)^2)
L=int(c,0,pi/2)