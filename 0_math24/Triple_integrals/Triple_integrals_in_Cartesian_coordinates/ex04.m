% I = int int int (U) dx dy dz
% U: x^2+z^@=4, y=3

syms x y z;
I1=int(int(int(1,z,0,sqrt(4-x^2)),y,0,3),x,0,2)
I2=int(int(int(1,z,0,sqrt(4-x^2)),x,0,2),y,0,3)
I3=int(int(int(1,x,0,sqrt(4-z^2)),y,0,3),z,0,2)
I4=int(int(int(1,x,0,sqrt(4-z^2)),z,0,2),y,0,3)
I5=int(int(int(1,y,0,3),x,0,sqrt(4-z^2)),z,0,2)
I6=int(int(int(1,y,0,3),z,0,sqrt(4-x^2)),x,0,2)