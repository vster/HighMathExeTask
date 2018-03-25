syms x y;
I=int(int(f,y,(1-x^2)/2,sqrt(1-x^2)),x,0,1)

y1=(1-x^2)/2
y2=sqrt(1-x^2)

ezplot(y1)
hold on
ezplot(y2)
hold off
grid on


x1=-sqrt(1-y^2)
x2=sqrt(1-y^2)
x3=-sqrt(1-2*y)
x4=sqrt(1-2*y)

I1=int(int(f(x,y),x,-sqrt(1-y^2),sqrt(1-y^2)),y,1/2,1)
I2=int(int(f(x,y),x,-sqrt(1-y^2),-sqrt(1-2*y)),y,0,1/2)
I3=int(int(f(x,y),x,sqrt(1-2*y),sqrt(1-y^2)),y,0,1/2)
IR=I1+I2+I3