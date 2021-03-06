% Calculate the triple integral
% I = int int int (T) 1 dx dy dz
% T - ball x^2+y^2+z^2<=r^2

syms x y z r;
f1=1
f2=x^2+y^2+z^2-r^2

% We introduce the spherical coordinates
syms ro phi teta;
x1=ro*sin(teta)*cos(phi);
y1=ro*sin(teta)*sin(phi);
z1=ro*cos(teta);

f2=subs(f2,[x y z],[x1 y1 z1])
f2=simplify(f2)

I=int(int(int(ro^2*sin(teta),phi,0,2*pi),teta,0,pi),ro,0,r)
% (4*pi*r^3)/3