% Вычислить тройной интеграл
% I = int int int (T) x*y*z dx dy dz
% T - ограничена сферой x^2+y^2+z^2=1
% и плоскостями x=0, y=0, z=0

syms x y z;
f1=x*y*z
z2=sqrt(1-x^2-y^2)
y2=sqrt(1-x^2)

I=int(int(int(f1,z,0,z2),y,0,y2),x,0,1)
% 1/48