syms x y;
digits(4)

I1=int(int(x-y,y,x,2-x^2),x,0,1)
% -17/20

I2=int(int(x+y,y,0,2-x),x,0,2)
% 8/3

I3=int(int(x,y,x^3,2-x),x,0,1)
% 7/15

I4=int(int(x^2*y,y,2-x,sqrt(4-x^2)),0,2)
% 8/5

I5=int(int(sin(x+y),x,y,pi/2-y),y,0,pi/4)
% 1/2

I6=int(int(y,y,2*x,3-x^2),x,-3,1)
% -64/15

I7=int(int(x*sin(y),y,0,x^2),x,0,1)
vpa(I7)
% 0.07926

I8=int(int(exp(x),y,x,1),x,0,1)
vpa(I8)
% 0.7183

syms a;
I9=int(int(x+y,x,y-a,y),y,a,2*a)
% (5*a^3)/2
