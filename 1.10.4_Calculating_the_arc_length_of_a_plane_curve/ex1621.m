syms t;
x=9*(t-sin(t))
y=9*(1-cos(t))

ezplot(x,y)
hold on
plot(subs(x,t,pi),subs(y,t,pi),'ro')
hold off

c=sqrt(diff(x)^2+diff(y)^2)
L=int(c,0,2*pi)