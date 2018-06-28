% Determine whether the vector field 
% F = (y*z, x*z, x*y) is a potential field?

syms x y z;
P=y*z;
Q=x*z;
R=x*y;
F=[P Q R]

rot_F=curl(F,[x y z])
% [0;0;0] => field F is potential