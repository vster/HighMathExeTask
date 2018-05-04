% Найти координаты ЦТ тела, 
% ограниченного поверхностями
% z^2=x*y, x=5, y=5, z=0

syms x y z;
V=int(int(int(1,z,0,sqrt(x*y)),y,0,5),x,0,5)
% 500/9
xm=1/V*int(int(int(x,z,0,sqrt(x*y)),y,0,5),x,0,5)
% 3
ym=1/V*int(int(int(y,z,0,sqrt(x*y)),y,0,5),x,0,5)
% 3
zm=1/V*int(int(int(z,z,0,sqrt(x*y)),y,0,5),x,0,5)
% 45/32