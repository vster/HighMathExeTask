% Calculate the volume of the unit ball
% x^2+y^2+z^2=1

syms x y;
z=sqrt(1-(x^2+y^2))

syms ro teta;
x1=ro*cos(teta);
y1=ro*sin(teta);
J=ro

z=subs(z,[x y],[x1 y1])
z=simplify(z)
% (1 - ro^2)^(1/2)
% 0<=ro<=1

V=2*int(int(z*J,ro,0,1),teta,0,2*pi)
% (4*pi)/3