syms x y;
y1=1/x
y2=sqrt(x)

ezplot(y1)
hold on
ezplot(y2)
hold off

I1=int(int(y*log(x),y,0,sqrt(x)),x,0,1)
I2=int(int(y*log(x),y,0,1/x),x,1,2)
I=I1+I2