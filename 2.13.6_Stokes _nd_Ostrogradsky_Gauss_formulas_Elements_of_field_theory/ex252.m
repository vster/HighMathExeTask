% Find the integral
% int int (S) (x^3*cos(alfa)+y^3*cos(beta)+z^3*cos(gamma))*dS
% taken over the surface of a sphere
% x^2+y^2+z^2=a^2,
% where alfa,beta,gamma - angles of the outer normal with the coordinate axes

% Ostrogradsky-Gauss formula
% int int (S) (P*cos_alfa+Q*cos_beta+R*cos_gamma)*dS = 
% = int int int (T) (dP/dx+dQ/dy+dR/dz)*dx*dy*dz

syms x y z a;
r=[x,y,z]
F=[x^3,y^3,z^3]
div_F=divergence(F,r)
% 3*x^2 + 3*y^2 + 3*z^2

% We proceed to spherical coordinates
syms ro phi teta;
x1=ro*cos(phi)*sin(teta)
y1=ro*sin(phi)*sin(teta)
z1=ro*cos(teta)
J=ro^2*sin(teta)

f1=subs(div_F,[x y z],[x1 y1 z1])
f1=simplify(f1)
% 3*ro^2

I=int(int(int(f1*J,ro,0,a),teta,0,pi),phi,0,2*pi)
% (12*pi*a^5)/5