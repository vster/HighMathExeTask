% Calculate the triple integral
% I = int int int (T) x*y^2*z^3 dx dy dz
% T - bounded by surfaces
% z=x*y, y=x, x=1, z=0

syms x y z;
f1=x*y^2*z^3
z1=x*y

I=int(int(int(f1,z,0,x*y),y,0,x),x,0,1)
% 1/364
