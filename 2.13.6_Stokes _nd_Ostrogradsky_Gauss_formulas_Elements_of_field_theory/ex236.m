% Find integral
% int int (S) (x*cos_alfa+y*cos_beta+z*cos_gamma)*dS

% Ostrogradsky-Gauss formula
% int int (S) (P*cos_alfa+Q*cos_beta+R*cos_gamma)*dS = 
% = int int int (T) (dP/dx+dQ/dy+dR/dz)*dx*dy*dz

syms x y z;
% f=diff(x,x)+diff(y,y)+diff(z,z)
F=[x y z]
r=[x y z]
div_F=divergence(F,r)
% 3
% I = 3* int int int (V) dx dy dz = 3*V