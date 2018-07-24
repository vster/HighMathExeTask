% Using the Stokes formula, calculate the curvilinear integral
% int(C) (y + 2z) dx + (x + 2z) dy + (x + 2y) dz, 
% where the curve C is formed by the intersection of the sphere 
% x^2 + y^2 + z^2 = 1 by the plane x + 2*y + 2*z = 0.

% int(C)F*dr  = int_int(S)rot_F*dS

syms x y z real;
p1=x + 2*y + 2*z
N=[1 2 2]

P=y+2*z
Q=x+2*z
R=x+2*y
F=[P Q R]
% [ y + 2*z, x + 2*z, x + 2*y]

n=sym(N/norm(N))
% [ 1/3, 2/3, 2/3]
rot_F=curl(F,[x y z])
rot_F=rot_F'
% [0 1 0]

% int(C)F*dr  = int_int(S)rot_F*dS = int_int(S)rot_F*n*dS

f=dot(rot_F,n)
% 2/3

% S=int_int(S)*dS = pi*1^2=pi
S=pi
I=f*S
% (2*pi)/3