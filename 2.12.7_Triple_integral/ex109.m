% ¬ычислить тройной интеграл
% I = int int int (T) (x^2+y^2) dx dy dz
% T - ограничена поверхност€ми
% z=0.5*(x^2+y^2), z=2

syms x y z;
f1=x^2+y^2
f2=z-0.5*(x^2+y^2)

% ѕереход к цилиндрическим координатам
syms ro phi z;
x1=ro*cos(phi);
y1=ro*sin(phi);
z1=z;

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% ro^2

f2=subs(f2,[x y z],[x1 y1 z1])
f2=simplify(f2)
z1=ro^2/2

I=int(int(int(f1*ro,z,z1,2),ro,0,2),phi,0,2*pi)
% (16*pi)/3
