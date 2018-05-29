% Find the mass of the surface of the sphere and the statistical 
% moment Mx of the upper hemisphere

% We introduce the spherical coordinates
syms x y z;
gamma=sqrt(x^2+y^2)

syms R phi teta d_phi d_teta;
x1=R*sin(teta)*cos(phi);
y1=R*sin(teta)*sin(phi);
z1=R*cos(teta);

% Jacobian
J=R^2*sin(teta)
dS=J*d_teta*d_phi
% R^2*d_phi*d_teta*sin(teta)

% Density
gamma=subs(gamma,[x y z],[x1 y1 z1])
gamma=simplify(gamma)
% abs(R)*(sin(teta)^2)^(1/2)
gamma=R*sin(teta)

% m = int int (S) gamma*dS
m = int(int(R*sin(teta)*R^2*sin(teta),teta,0,pi),phi,0,2*pi)
% pi^2*R^3

% Mxy = int int (S) z*gamma*dS
Mxy=int(int(R*cos(teta)*R*sin(teta)*R^2*sin(teta),teta,0,pi/2),phi,0,2*pi)
% (2*pi*R^4)/3

dS1=dS/(d_teta*d_phi)
Mxy1=int(int(z1*gamma*dS1,teta,0,pi/2),phi,0,2*pi)
% (2*pi*R^4)/3