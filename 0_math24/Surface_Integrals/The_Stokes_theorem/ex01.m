% Show that the curvilinear integral
% int(C)y*z*dx + x*z*dy + x*y*dz
% is 0 along any closed contour C.

syms x y z real;
F=[y*z x*z x*y]
P=y*z
Q=x*z
R=x*y

rot_F=curl(F,[x y z])
% [0 0 0]

% I=int_int(S)rot_F*dS = 0