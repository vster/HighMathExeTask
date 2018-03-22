syms x y;
f=x+2*y
% y=x, y=2*x
% x=2, x=3

I=int(int(x+2*y,y,x,2*x),x,2,3)
% 76/3