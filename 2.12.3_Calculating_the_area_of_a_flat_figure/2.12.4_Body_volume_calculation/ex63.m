% z=x+y+1
% y^2=x
% x=1
% y=0
% z=0

syms x y;
V=int(int(x+y+1,x,y^2,1),y,0,1)
% 79/60