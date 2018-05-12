% I = int (OA) x*y*dx+y*z*dy+z*x*dz
% где OA - четверть окружности
% x=cos(t),y=sin(t),z=1

syms t
x=cos(t)
y=sin(t)
z=1
f=x*y*diff(x)+y*z*diff(y)+z*x*diff(z)

