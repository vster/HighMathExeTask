% z=x*y
% x+y=a
% z=0

syms x y a;
V=int(int(x*y,y,0,a-x),x,0,a)
% a^4/24
