syms x;
y=x^2*exp(-x)
ezplot(y)
hold on

k1=limit(y/x,x,+inf)
b1=limit(y-k1*x,x,+inf)
x1=-6:6
y1=k1*x1+b1
plot(x1,y1,'m')

grid
hold off