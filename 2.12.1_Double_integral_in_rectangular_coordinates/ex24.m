syms x y f(x,y);
I=int(int(f,x,y,sqrt(y)),y,0,9/16)+...
    int(int(f,x,y,3/4),y,9/16,3/4)

x1=y
x2=sqrt(y)
x3=3/4

ezplot(x1)
hold on
ezplot(x2)
plot([-1 3],[3/4 3/4])
plot(9/16,3/4,'ro')
hold off
grid on

y1=x
y2=x^2

IR=int(int(f,y,x^2,x),x,0,3/4)