% Using the Ostrogradskii-Gauss formula, estimate the surface integral
% int_int(S)F*dS 
% from the vector field F (x, y, z) = (x^3, y^3, z^3), 
% where S is the surface of the body bounded by the surface 
% x^2 + y^2 - z^2 = 0 and the z = 1 plane.

syms x y z real;
F=[x^3 y^3 z^3]
f1=x^2+y^2-z^2

% int_int(S)F*dS = int_int_int(G)div(F)*dV

div_F=divergence(F)

syms ro phi;
x1=ro*cos(phi)
y1=ro*sin(phi)
z1=z
J=ro

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% ro^2 - z^2

f2=subs(div_F,[x y z],[x1 y1 z1])
f2=simplify(f2)
% 3*ro^2 + 3*z^2

% 0<=ro<=z
% 0<=phi<=2*pi
% 0<=z<=1
I=int(int(int(f2*J,ro,0,z),phi,0,2*pi),z,0,1)
% (9*pi)/10
