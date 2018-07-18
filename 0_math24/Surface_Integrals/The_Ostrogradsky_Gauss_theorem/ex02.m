% Applying the Ostrogradskii-Gauss theorem, calculate the surface integral
% int_int(S)F*dS 
% from the vector field F (x, y, z) = (x, y, z), 
% where S is the surface of the body formed by the cylinder 
% x^2 + y^2 = a^2 and the planes z = -1, z = 1.

syms x y z a real;
F=[x y z]
f1=x^2+y^2-a^2

% int_int(S)F*dS = int_int_int(G)div(F)*dV

div_F=divergence(F)
% 3

syms ro phi;
x1=ro*cos(phi)
y1=ro*sin(phi)
z1=z
J=ro

f1=subs(f1,[x y],[x1 y1])
f1=simplify(f1)
% ro^2 - a^2

I=int(int(int(div_F*J,ro,0,a),phi,0,2*pi),z,-1,1)
% 6*pi*a^2