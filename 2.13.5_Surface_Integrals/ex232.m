% Find the coordinates of the center of gravity of a part of the surface 
% z=2-0.5*(x^2+y^2), located above the xy plane.

syms x y dx dy real;
z=2-0.5*(x^2+y^2)
dzx=diff(z,x)
dzy=diff(z,y)
dS=sqrt(1+dzx^2+dzy^2)
% (x^2 + y^2 + 1)^(1/2)

f2=2-0.5*(x^2+y^2)

% S = int int (D) sqrt(1+diff(z,x)^2+diff(z,y)^2)*dx*dy
% S = int int (D) (x^2 + y^2 + 1)^(1/2)*dx*dy

syms ro teta;
x1=ro*cos(teta)
y1=ro*sin(teta)
J=ro

dS1=subs(dS,[x y],[x1 y1])
dS1=simplify(dS1)
% (ro^2 + 1)^(1/2)

f2=subs(f2,[x y],[x1 y1])
f2=simplify(f2)
% 2 - ro^2/2 => 0<=ro<=2

fx=x*dS
fx=subs(fx,[x y],[x1 y1])
fx=simplify(fx)
% ro*cos(teta)*(ro^2 + 1)^(1/2)

fy=y*dS
fy=subs(fy,[x y],[x1 y1])
fy=simplify(fy)
% ro*sin(teta)*(ro^2 + 1)^(1/2)

fz=z*dS
fz=subs(fz,[x y],[x1 y1])
fz=simplify(fz)
% -((ro^2 + 1)^(1/2)*(ro^2 - 4))/2

S=int(int(dS1*ro,ro,0,2),teta,0,2*pi)
%(2*pi*(5*5^(1/2) - 1))/3

xm=1/S*int(int(fx*J,ro,0,2),teta,0,2*pi)
% 0
ym=1/S*int(int(fy*J,ro,0,2),teta,0,2*pi)
% 0
zm=1/S*int(int(fz*J,ro,0,2),teta,0,2*pi)
zm=simplify(zm)
% 307/310 - (3*5^(1/2))/62