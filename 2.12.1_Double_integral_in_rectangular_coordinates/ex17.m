syms x y f(x,y);

y1=2-x;
y2=x^2/4-1
% x=2..-6

I=int(int(f,y,x^2/4-1,2-x),x,-6,2)

ezplot(y1)
hold on
ezplot(y2)
hold off
grid on

x1=2-y
x2=-2*sqrt(y+1)
x3=2*sqrt(y+1)

I1=int(int(f,x,-2*sqrt(y+1),2*sqrt(y+1)),y,-1,0)
I2=int(int(f,x,-2*sqrt(y+1),2-y),y,0,8)
I=I1+I2