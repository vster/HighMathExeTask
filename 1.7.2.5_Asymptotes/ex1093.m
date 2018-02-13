syms x;
y=(x^3-6*x^2)^(1/3)
ezplot(y,[6 16])
hold on

k1=limit(y/x,x,+inf)
b1=limit(y-k1*x,x,+inf)
x1=6:16
y1=k1*x1+b1
plot(x1,y1,'m')
grid on
hold off