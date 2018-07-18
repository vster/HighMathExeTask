% Compute the surface integral
% int_int(S)F*dS 
% from the vector field F(x,y,z) = (2*x^2*y, x*z^2, 4*y*z), 
% where S is the surface of the parallelepiped formed by the planes 
% x = 0, x = 1, y = 0, y = 2, z = 0, z = 3

syms x y z;
F=[2*x^2*y, x*z^2, 4*y*z]

% int_int(S)F*dS = int_int_int(G)div(F)*dV

div_F=divergence(F)
% 4*y + 4*x*y

I=int(int(int(div_F,z,0,3),y,0,2),x,0,1)
% 36
