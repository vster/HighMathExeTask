% z^2=x*y
% x=0
% x=1
% y=0
% y=4
% z=0

syms x y;
V=int(int(sqrt(x*y),y,0,4),x,0,1)
% 32/9