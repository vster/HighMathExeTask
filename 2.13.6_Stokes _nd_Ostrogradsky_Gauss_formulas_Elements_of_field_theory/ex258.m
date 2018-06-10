% Find the vector flow
% F=x^2*i+y^2*j+z^2*k
% through a part of the sphere
% x^2+y^2+z^2=4
% if 0<=x<=2,0<=y<=2,0<=z<=2

syms x y z real;
F=[x^2,y^2,z^2]
S=x^2+y^2+z^2-4

f1=diff(F(1),x)+diff(F(2),y)+diff(F(3),z)
% 2*x + 2*y + 2*z

% We proceed to spherical coordinates
syms ro phi teta;
x1=ro*cos(phi)*sin(teta)
y1=ro*sin(phi)*sin(teta)
z1=ro*cos(teta)
J=ro^2*sin(teta)

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% 2*ro*(cos(teta) + cos(phi)*sin(teta) + sin(phi)*sin(teta))

S=subs(S,[x y z],[x1 y1 z1])
S=simplify(S)
% ro^2 - 4

I=int(int(int(f1*J,ro,0,2),teta,0,pi/2),phi,0,pi/2)
% 6*pi
