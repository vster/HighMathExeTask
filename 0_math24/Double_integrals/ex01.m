syms x y;

I1=int(int(x*y,y,0,1),x,2,4)

I2=int(int(x*y^2,y,0,2),x,1,5)

I3=int(int(1/(x+y)^2,y,1,2),x,0,2)

I4=int(int(cos(x+y),y,0,pi/2),x,0,pi/2)

I5=int(int(x-y^2,y,1,2),x,2,3)