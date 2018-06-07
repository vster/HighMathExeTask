% Find
% int int(S)(z^2-y^2)*cos(alfa)+(x^2-y^2)*cos(beta)+(y^2-x^2)*cos(gamma))*dS
% where S - the outer surface of the hemisphere
% x^2+y^2+z^2=a^2 (z>=0)

% Ostrogradsky-Gauss formula
% int int (S) (P*cos_alfa+Q*cos_beta+R*cos_gamma)*dS = 
% = int int int (T) (dP/dx+dQ/dy+dR/dz)*dx*dy*dz

syms x y z a;
P=z^2-y^2
Q=x^2-y^2
R=y^2-x^2
f=diff(P,x)+diff(Q,y)+diff(R,z)
% -2*y

% We proceed to spherical coordinates
syms ro phi teta;
x1=ro*cos(phi)*sin(teta)
y1=ro*sin(phi)*sin(teta)
z1=ro*cos(teta)
J=ro^2*sin(teta)

f1=subs(f,[x y z],[x1 y1 z1])
f1=simplify(f1)
% -2*ro*sin(phi)*sin(teta)

I=int(int(int(f1*J,ro,0,a),teta,0,pi/2),phi,0,2*pi)
% 0