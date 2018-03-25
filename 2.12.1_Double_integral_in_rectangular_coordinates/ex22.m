syms x y f(x,y);
I=int(int(f,y,0,sin(x)),x,0,pi)

y1=sin(x)

ezplot(y1)
grid on

x1=asin(y)

IR=int(int(f,x,asin(y),pi-asin(y)),y,0,1)
