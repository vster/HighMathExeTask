% z=0
% x+y=1
% x^2+y^2=1
% z=1-x

syms x y;
V=int(int(1-x,y,1-x,sqrt(1-x^2)),x,0,1)
% pi/4 - 2/3