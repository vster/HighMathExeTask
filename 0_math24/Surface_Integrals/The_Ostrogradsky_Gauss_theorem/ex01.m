% Compute the surface integral
% int_int(S)x^3*dy*dz + y^3*dx*dz + z^3*dx*dy, 
% where S is the outwardly oriented surface of the sphere, 
% given by the equation 
% x^2 + y^2 + z^2 = a^2.

% int_int(S)F*dS = int_int_int(G)div(F)*dV

syms x y z a real
F=[x^3 y^3 z^3]
f1=x^2+y^2+z^2-a^2

div_F=divergence(F)
% 3*x^2 + 3*y^2 + 3*z^2

% We proceed to spherical coordinates
syms ro phi teta;
x1=ro*cos(phi)*sin(teta)
y1=ro*sin(phi)*sin(teta)
z1=ro*cos(teta)
J=ro^2*sin(teta)

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% ro^2 - a^2

% 0<=ro<=a
% 0<=teta<=pi
% 0<=phi<=2*pi

f2=subs(div_F,[x y z],[x1 y1 z1])
f2=simplify(f2)
% 3*ro^2

I=int(int(int(f2*J,ro,0,a),teta,0,pi),phi,0,2*pi)
% (12*pi*a^5)/5


