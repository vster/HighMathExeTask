syms x y;
f=exp(x+sin(y))*cos(y)
I1=int(int(f,x,0,pi),y,0,pi/2)
I2=int(int(f,y,0,pi/2),x,0,pi)