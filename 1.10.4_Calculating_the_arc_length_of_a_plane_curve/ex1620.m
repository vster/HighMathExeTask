syms t;
x=8*sin(t)+6*cos(t)
y=6*sin(t)-8*cos(t)

% ezplot(x,y)

c1=diff(x)^2+diff(y)^2
c1=factor(c1)
c1=simplify(c1)
c=sqrt(c1)

L=int(c,0,pi/2)