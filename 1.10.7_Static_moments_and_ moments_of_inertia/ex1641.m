syms t a b;
x=a*cos(t)
y=b*sin(t)

% Iy=int(x^2,S,-a,a)
% dS=2*y*dx

dS=2*y*diff(x)

f=2*x^2*dS
Iy=int(f,t,pi/2,0)

% (pi*a^3*b)/4