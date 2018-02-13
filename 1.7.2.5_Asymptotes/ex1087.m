syms x;
y=sqrt(x^3/(x-2))
ezplot(y)
grid

xv=2;
yv=limit(y,x,xv,'right')
hold on
plot([xv xv],[-1 13],'r')

k1=limit(y/x,x,+inf)
b1=limit(y-k1*x,x,+inf)
x1=-6:6
y1=k1*x1+b1
plot(x1,y1,'m')

k2=limit(y/x,x,-inf)
b2=limit(y-k2*x,x,-inf)
x2=-6:0
y2=k2*x2+b2
plot(x2,y2,'m')
grid