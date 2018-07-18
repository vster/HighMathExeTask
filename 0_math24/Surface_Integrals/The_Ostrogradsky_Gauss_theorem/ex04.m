% Compute the surface integral
% int_int(S)F*dS
% from the vector field F (x, y, z) = (2*x*y, 8*x*z, 4*y*z), 
% where S is the surface of the tetrahedron with vertices 
% O (0,0,0), A (1,0,0), B (0,1,0), C (0,0,1).

syms x y z real;
F=[2*x*y 8*x*z 4*y*z]

% int_int(S)F*dS = int_int_int(G)div(F)*dV

div_F=divergence(F)

% Line AB
% (y-yA)/(yB-yA) = (x-xA)/(xB-xA) => (y-0)/(1-0)=(x-1)/(0-1) => 
%   y=-(x-1) => y=1-x

% Plane ABC
% x/1+y/1+z/1=1 => x+y+z=1 => z=1-x-y

I=int(int(int(div_F,z,0,1-x-y),y,0,1-x),x,0,1)
% 1/4
