% Вычислить тройной интеграл
% I = int int int (T) sqrt(1+(x^2+y^2+z^2)^(3/2)) dx dy dz
% T - шар x^2+y^2+z^2<=1

syms x y z;
f1=sqrt(1+(x^2+y^2+z^2)^(3/2))

% Введем сферические координаты
syms ro phi teta;
x1=ro*sin(teta)*cos(phi);
y1=ro*sin(teta)*sin(phi);
z1=ro*cos(teta);

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% ((ro^2)^(3/2) + 1)^(1/2)
f1=sqrt(1+ro^3)

I=int(int(int(f1*ro^2*sin(teta),phi,0,2*pi),teta,0,pi),ro,0,1)
% (8*pi*(2*2^(1/2) - 1))/9