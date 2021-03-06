% Find the triple integral
% int int int (U) (x^2/a^2+y^2/b^2+z^2/c^2) dx*dy*dz
% where the domain U is bounded by an ellipsoid
% x^2/a^2+y^2/b^2+z^2/c^2=1

syms x y z a b c real;
f1=x^2/a^2+y^2/b^2+z^2/c^2
f2=x^2/a^2+y^2/b^2+z^2/c^2-1

% We proceed to spherical coordinates
syms ro phi teta;
x1=a*ro*cos(phi)*sin(teta)
y1=b*ro*sin(phi)*sin(teta)
z1=c*ro*cos(teta)
J=a*b*c*ro^2*sin(teta)

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% ro^2

f2=subs(f2,[x y z],[x1 y1 z1])
f2=simplify(f2)
% ro^2 - 1

% 0<=ro<=1
% 0<=phi<=2*pi
% 0<=teta<=pi

I=int(int(int(f1*J,teta,0,pi),ro,0,1),phi,0,2*pi)
% (4*pi*a*b*c)/5