syms x;
y=2*x-cos(x)/x
ezplot(y)

xv=0;
yv=limit(y,x,xv,'right')
hold on
plot([xv xv],[-30 30],'r')

k1=limit(y/x,x,+inf)
b1=limit(y-k1*x,x,+inf)
x1=-6:6
y1=k1*x1+b1
plot(x1,y1,'m')
grid on
hold off