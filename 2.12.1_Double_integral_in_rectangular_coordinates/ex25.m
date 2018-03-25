syms x y f(x,y);
I=int(int(f,y,0,sqrt(x)),x,0,2)+...
    int(int(f,y,sqrt(x-2),sqrt(x)),x,2,4)+...
    int(int(f,y,sqrt(x-2),2),x,4,6)

y1=sqrt(x)
y2=sqrt(x-2)

ezplot(y1)
hold on
ezplot(y2)
hold off
grid on

x1=y^2
x2=y^2+2

IR=int(int(f,x,y^2,y^2+2),y,0,2)