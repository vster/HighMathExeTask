% Compute the curvilinear integral
% int_c(C) (x + z)*dx + (x-y)*dy + x*dz, 
% using the Stokes theorem. The curve C has the shape of an ellipse 
% and is determined by the equations
% x^2/4+y^2/9=1, z=1

syms x y z real;
P=x+z
Q=x-y
R=x
F=[P Q R]
% [ x + z, x - y, x]

% z=1
n=[0 0 1]

rot_F=curl(F,[x y z])'
% [ 0, 0, 1]

% int(C)F*dr  = int_int(S)rot_F*dS = int_int(S)rot_F*n*dS
f1=dot(rot_F,n)
% 1
% I=int_int(S)f1*dS
I=f1*2*3*pi
% 6*pi
