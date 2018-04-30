% Вычислить тройной интеграл
% I= int int int (T) z dx dy dz
% x^2/9+y^2/4+z^2<=1

syms x y z;
z2=sqrt(1-x^2/9-y^2/4)
y1=-(2/3)*sqrt(9-x^2)
y2=(2/3)*sqrt(9-x^2)

I=int(int(int(z,z,0,z2),y,y1,y2),x,-3,3)
% (3*pi)/2