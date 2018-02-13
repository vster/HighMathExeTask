syms x;
y==-x*atan(x)
ezplot(y,[-7 7])
hold on

k1=limit(y/x,x,+inf)
b1=limit(y-k1*x,x,+inf)
x1=-7:7;
y1=k1*x1+b1;
plot(x1,y1,'m')

k2=limit(y/x,x,-inf)
b2=limit(y-k2*x,x,-inf)
x2=-7:7;
y2=k2*x2+b2;
plot(x2,y2,'m')

grid on
hold off