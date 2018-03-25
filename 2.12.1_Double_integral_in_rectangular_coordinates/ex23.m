syms x y f(x,y);
I=int(int(f,x,3*y/4,sqrt(25-y^2)),y,0,4)

x1=3*y/4
x2=sqrt(25-y^2)

ezplot(x1)
hold on
ezplot(x2)
hold off
grid on

I1=int(int(f,y,0,4*x/3),x,0,3)
I2=int(int(f,y,0,sqrt(25-x^2)),x,3,5)
I=I1+I2