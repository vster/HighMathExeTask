% z=0
% z=x*y
% x^2+y^2=4

syms x y;
V=2*int(int(x*y,y,0,sqrt(4-x^2)),x,0,2)
% 4