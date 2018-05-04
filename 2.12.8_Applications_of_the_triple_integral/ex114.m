% Найти объем тела, огр. поверхностями
% z=sqrt(x^2+y^2), z=x^2+y^2
% V = int int int (T) dx dy dz

syms x y z h;
f1=sqrt(x^2+y^2)
f2=x^2+y^2

% Переход к цилиндрическим координатам
syms ro phi z;
x1=ro*cos(phi);
y1=ro*sin(phi);
z1=z;

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% (ro^2)^(1/2)
f1=ro

f2=subs(f2,[x y z],[x1 y1 z1])
f2=simplify(f2)
% ro^2

V=int(int(int(ro,z,ro^2,ro),ro,0,1),phi,0,2*pi)
% pi/6
