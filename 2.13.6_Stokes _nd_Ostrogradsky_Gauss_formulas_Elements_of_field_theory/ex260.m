% Find the circulation of the vector field 
% F=(x+y)*i+(x-z)*j+(y+z)*k
% along the contour of the triangle ABC
% where A(0;0;0),B(0;1;0),C(0;0;1)

% According to the Stokes formula
% C = int (C) F*dr = int int (S) n*rot(F)*dS
% C is the contour of the ABC triangle lying in the plane
% 

syms x y z;
A=[0 0 0]
B=[0 1 0]
C=[0 0 1]
eq=[x y z;0 1 0;0 0 1]
C=det(eq)
% x=0

F=[x+y,x-z,y+z]
rot_F=curl(F)
% [2 0 0]

% C = int int (S) n*rot_F*dS =
%  = int int (S) rot_F(1)*dy*dz+rot_F(2)*dz*dx+rot_F(3)*dx*dy
%  = int int (Dyz) rot_F(1)*dy*dz +
%  + int int (Dzx) rot_F(2)*dz*dx +
%  + int int (Dxy) rot_F(3)*dx*dy

% x=0 => y+z=1 => z=1-y
I1=int(int(rot_F(1),z,0,1-y),y,0,1)
% 1
I=I1
% 1



