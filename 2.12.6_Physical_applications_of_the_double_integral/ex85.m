% Find the center of gravity
% y^2=x, x^2=y

syms x y;
y1=x^2
y2=sqrt(x)

S=int(int(1,y,y1,y2),x,0,1)
% 1/3
xm=1/S*int(int(x,y,y1,y2),x,0,1)
% 9/20
ym=1/S*int(int(y,y,y1,y2),x,0,1)
% 9/20