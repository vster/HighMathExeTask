% I = int int int (U) x*y^2*z^3 dx dy dz
% U: z=x*y,y=x,x=0,x=1,z=0

syms x y z;
I=int(int(int(x*y^2*z^3,z,0,x*y),y,0,x),x,0,1)
% 1/364