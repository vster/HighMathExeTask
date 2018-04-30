% Вычислить тройной интеграл
% I= int int int (T) x^2 dx dy dz
% x=0, y=0, z=0, x+y+z-2=0

syms x y z;
I=int(int(int(x^2*y*z,z,0,2-x-y),y,0,2-x),x,0,2)
% 16/315