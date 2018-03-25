syms x y f(x,y);
I1=int(int(f,y,0,x),x,0,1)

y1=x

ezplot(y1)
grid on

x1=y

I2=int(int(f,x,y,1),y,0,1)