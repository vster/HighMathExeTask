% Найти объем области, ограниченной двумя параболоидами: 
% z1=x^2+y^2, z2=1-x^2-y^2

syms x y real;
z1=x^2+y^2
z2=1-x^2-y^2

% Transition to cylindrical coordinates
syms ro phi;
x1=ro*cos(phi);
y1=ro*sin(phi);
J=ro

z1=subs(z1,[x y],[x1 y1])
z1=simplify(z1)
% ro^2

z2=subs(z2,[x y],[x1 y1])
z2=simplify(z2)
% 1 - ro^2

% z1=z2 => ro^2=1-ro^2 => ro^2=1/2 => ro=sqrt(2)/2

V=int(int(int(ro,z,ro^2,1-ro^2),ro,0,sqrt(2)/2),phi,0,2*pi)
% pi/4
