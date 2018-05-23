% Find integral
% I = int int int (U) y dx*dy*dz
% where U bounded by z=x+1,z=0,x^2+y^2=1,x^2+y^2=4

syms x y z;
f1=y
f2=z-x-1
f3=x^2+y^2-1
f4=x^2+y^2-4

syms ro phi z;
x1=ro*cos(phi);
y1=ro*sin(phi);
z1=z;

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% ro*sin(phi)

f2=subs(f2,[x y z],[x1 y1 z1])
f2=simplify(f2)
% z - ro*cos(phi) - 1
% z=ro*cos(phi)+1

f3=subs(f3,[x y z],[x1 y1 z1])
f3=simplify(f3)
% ro^2 - 1
% ro=1

f4=subs(f4,[x y z],[x1 y1 z1])
f4=simplify(f4)
% ro^2 - 4
% ro=2

% 1<=ro<=2
% 0<=phi<=2*pi

I=int(int(int(ro*sin(phi)*ro,z,0,ro*cos(phi)+1),ro,0,2),phi,0,2*pi)
% 0
