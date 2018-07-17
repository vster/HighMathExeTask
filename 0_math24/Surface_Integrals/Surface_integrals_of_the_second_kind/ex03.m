% Estimate the flux of the vector field 
% F = y*i - x*j + z*k through the conical surface 
% z = sqrt(x^2 + y^2), 0<=z<=2, oriented by the outer side.


syms x y z real;
F=[y,-x,z]
z1=sqrt(x^2+y^2)

% cone
r=[x,y,z]
r=subs(r,z,z1)

% D: x^2+y^2<=4

drx=diff(r,x)
% [ 1, 0, x/(x^2 + y^2)^(1/2)]
dry=diff(r,y)
% [ 0, 1, y/(x^2 + y^2)^(1/2)]

dS=cross(drx,dry)
% [ -x/(x^2 + y^2)^(1/2), -y/(x^2 + y^2)^(1/2), 1]

F=subs(F,z,z1)
% [ y, -x, (x^2 + y^2)^(1/2)]

f=dot(F,dS)
% (x^2 + y^2)^(1/2)

syms ro phi;
x1=ro*cos(phi)
y1=ro*sin(phi)
J=ro

f1=subs(f,[x y],[x1 y1])
f1=simplify(f1)
f1=ro

I=int(int(f1*J,ro,0,1),phi,0,2*pi)
% (2*pi)/3