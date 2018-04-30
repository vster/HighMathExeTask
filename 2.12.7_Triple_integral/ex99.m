% ��������� ������� ��������
% I= int int int (T) z*sqrt(x^2+y^2) dx dy dz
% x^2+y^2=2*x, y=0, z=0, z=a

syms x y z;
f1=z*sqrt(x^2+y^2)
f2=x^2+y^2-2*x

% ������� � �������������� �����������
syms ro phi z;
f1=subs(f1,[x y z],[ro*cos(phi) ro*sin(phi) z])
f1=simplify(f1)
% z*(ro^2)^(1/2)
f1=z*ro

f2=subs(f2,[x y z],[ro*cos(phi) ro*sin(phi) z])
f2=simplify(f2)
% ro^2 - 2*cos(phi)*ro
ro2=2*cos(phi)

I=int(int(int(z*ro*ro,z,0,a),ro,0,2*cos(phi)),phi,0,pi/2)
% (8*a^2)/9