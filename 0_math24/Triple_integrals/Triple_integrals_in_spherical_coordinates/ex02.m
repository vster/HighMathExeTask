% Compute the integral
% int int int (U) exp((x^2+y^2+z^2)^(3/2)) dx dy dz
% where the region U is a unit ball x^2+y^2+z^2<=1

syms x y z;
f1=exp((x^2+y^2+z^2)^(3/2))
f2=x^2+y^2+z^2-1

% We proceed to spherical coordinates
syms ro phi teta;
x1=ro*cos(phi)*sin(teta)
y1=ro*sin(phi)*sin(teta)
z1=ro*cos(teta)
J=ro^2*sin(teta)

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% exp((ro^2)^(3/2))

f2=subs(f2,[x y z],[x1 y1 z1])
f2=simplify(f2)
% ro^2 - 1

% 0<=ro<=1
% 0<=phi<=2*pi
% 0<=teta<=pi

I=int(int(int(f1*J,ro,0,1),teta,0,pi),phi,0,2*pi)
% (4*pi*(exp(1) - 1))/3

