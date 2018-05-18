% Calculation of body volume
% V=int int f(x,y)*dx*dy

syms x y z;
% y=1+x^2
% z=3*x
% y=5
% z=0

V=int(int(3*x,y,1+x^2,5),x,0,2)
% 12