% Вычислить тройной интеграл
% I = int int int (T) x dx dy dz
% T - ограничена поверхностями
% x=0, y=0, z=0, y=3, x+z=2

syms x y z;
I=int(int(int(x,z,0,2-x),y,0,3),x,0,2)
% 4