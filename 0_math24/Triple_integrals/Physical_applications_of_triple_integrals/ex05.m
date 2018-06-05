% With what force does the homogeneous ball of mass M attract the material 
% point of mass m located at a distance a from the center of the sphere (a>R)?

syms M m a R G ro0 real;
% dM=ro(r)*dr*dS
% The specified sphere creates at the point P a potential equal to
% du = ro(r)*dr* int int (S) dS/delta
% delta = sqrt(a^2+r^2-2*a*r*cos(teta))
% du = ro(r)*dr* int int (S) dS/sqrt(a^2+r^2-2*a*r*cos(teta))
% ro(r) = ro0    - homogeneous ball density
% du = ro0*dr* I
% dS=r^2*sin(teta)*d_teta*d_phi

syms r teta phi dr d_teta d_phi real;
assume(a>r)
% I = int int (S) dS/delta
% f = dS/delta
delta=sqrt(a^2+r^2-2*a*r*cos(teta))
dS=r^2*sin(teta)*d_teta*d_phi
f=dS/delta/(d_teta*d_phi)
% (r^2*sin(teta))/(a^2 - 2*cos(teta)*a*r + r^2)^(1/2)
I=int(int(f,teta,0,pi),phi,0,2*pi)
I=simplify(I)
% (2*pi*r*(r - a + abs(a + r)))/a
I=4*pi*r^2/a

du=ro0*dr*I
% (4*pi*dr*r^2*ro0)/a
u=int(du/dr,r,0,R)
% (4*pi*R^3*ro0)/(3*a)
% 4/3*pi*R^3=V, ro0*V=M => u=M/a
% Gravitational field potential
u=M/a

% F = -G*m*grad(u)
F=G*m*diff(u,a)
% -(G*M*m)/a^2
