syms x y;
f=cos(x)^2+sin(y)^2
% 0<=x<=pi/4
% 0<=y<=pi/4
I1=int(f,y,0,pi/4)
I2=int(I1,x,0,pi/4)
% pi^2/16