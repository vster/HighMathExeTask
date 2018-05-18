% Calculate the triple integral
% I = int int int (T) (x^2+y^2) dx dy dz
% T-upper half of the ball: x^2+y^2+z^2<=r^2

syms x y z r;
f1=x^2+y^2;
f2=x^2+y^2+z^2-r^2;

% We introduce the spherical coordinates
syms ro phi teta;
x1=ro*sin(teta)*cos(phi);
y1=ro*sin(teta)*sin(phi);
z1=ro*cos(teta);

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% ro^2*sin(teta)^2
f2=subs(f2,[x y z],[x1 y1 z1])
f2=simplify(f2)
% ro^2 - r^2

% 0<=ro<=r
% 0<=phi<=2*pi
% 0<=teta<=pi/2

I=int(int(int(f1*(ro^2*sin(teta)),phi,0,2*pi),teta,0,pi/2),ro,0,r)
% (4*pi*r^5)/15


