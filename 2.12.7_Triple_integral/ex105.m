% Вычислить тройной интеграл
% I = int int int (T) z dx dy dz
% T - ограничена поверхностями
% z^2=x^2+y^2, z=2

syms x y z;
I=int(int(int(z,z,sqrt(x^2+y^2),2),y,-sqrt(4-x^2),sqrt(4-x^2)),x,-2,2)
% 4*pi