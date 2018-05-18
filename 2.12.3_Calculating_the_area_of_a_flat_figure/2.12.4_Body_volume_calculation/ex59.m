% z=4-x^2
% 2*x+y=4
% x=0
% y=0
% z=0

syms x y;
y1=0
y2=4-2*x
V=int(int(4-x^2,y,0,4-2*x),x,0,2)
% 40/3