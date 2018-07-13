% Find the integral int(S)x*dS, where the surface S is the part of the sphere 
% x^2 + y^2 + z^2 = a^2, lying in the first octant.

syms a x y z real;
f1=x

syms ro phi teta;
x1=a*cos(phi)*sin(teta)
y1=a*sin(phi)*sin(teta)
z1=a*cos(teta)
J=a^2*sin(teta)

f3=subs(f1,[x y z],[x1 y1 z1])
% a*cos(phi)*sin(teta)

% D={(thi,teta)|0<=phi<=pi/2,0<=teta<=pi/2)
I=int(int(f3*J,teta,0,pi/2),phi,0,pi/2)
% (pi*a^3)/4