syms x;
y=(x^2-2*x+3)/(x+2)
ezplot(y)

xv=-2;
yv=limit(y,x,xv)
hold on
plot([xv xv],[-35 25],'r')

k1=limit(y/x,x,+inf)
b1=limit(y-k1*x,x,+inf)
x1=-7:7
y1=k1*x1+b1
plot(x1,y1,'m')
grid
hold off