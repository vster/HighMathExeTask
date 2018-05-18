% z=x^2+y^2
% y=x^2
% y=1
% z=0

syms x y;
V=int(int(x^2+y^2,y,x^2,1),x,-1,1)
% 88/105