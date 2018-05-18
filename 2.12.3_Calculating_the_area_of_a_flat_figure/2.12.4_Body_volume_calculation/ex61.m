% z=5*x
% x^2+y^2=9
% z=0

syms x y;
V=int(int(5*x,x,0,sqrt(9-y^2)),y,-3,3)
% 90