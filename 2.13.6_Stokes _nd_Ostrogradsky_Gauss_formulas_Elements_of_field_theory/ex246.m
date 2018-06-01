% Find the circulation of a vector field
% F=(x+3y+2z)*i+(2x+z)*j+(x-y)*k
% on the contour of the MNP triangle, where
% M(2;0;0),N(0;3;0),P(0;0;1).

% According to the Stokes formula
% C = int (C) F*dr = int int (S) n*rot(F)*dS
% C is the contour of the MNP triangle lying in the plane
% MNP: 3*x+2*y+6*z-6=0

syms x y z real;
F=[x+3*y+2*z 2*x+z x-y]
rot_F=curl(F)
% [-2 1 -1]

% C = int int (S) n*rot_F*dS =
%  = int int (S) rot_F(1)*dy*dz+rot_F(2)*dz*dx+rot_F(3)*dx*dy
%  = int int (Dyz) rot_F(1)*dy*dz +
%  + int int (Dzx) rot_F(2)*dz*dx +
%  + int int (Dxy) rot_F(3)*dx*dy

% x=0 => 2y+6z-6=0 => z=1-y/3
I1=int(int(rot_F(1),z,0,1-y/3),y,0,3)
% -3
% y=0 => 3x+6z-6=0 => x=2-2z
I2=int(int(rot_F(2),x,0,2-2*z),z,0,1)
% 1
% z=0 => 3x+2y-6=0 => y=3-3x/2
I3=int(int(rot_F(3),y,0,3-3*x/2),x,0,2)
% -3
I=I1+I2+I3
% -5