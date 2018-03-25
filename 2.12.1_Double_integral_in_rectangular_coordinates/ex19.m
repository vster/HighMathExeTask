syms x y f(x,y);

I=int(int(f,x,2-y,1+sqrt(1-y^2)),y,0,1)

x1=2-y
x2=1+sqrt(1-y^2)

ezplot(x1)
hold on
ezplot(x2)
hold off
grid on

y1=2-x
y2=sqrt(1-(x-1)^2)
y2=sqrt(2*x-x^2)

ezplot(y1)
hold on
ezplot(y2)
hold off
grid on

IR=int(int(f(x,y),y,2-x,sqrt(2*x-x^2)),x,1,2)