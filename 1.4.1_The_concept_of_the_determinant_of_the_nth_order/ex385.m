% x+2y+3z=14
% y+2z+3t=20
% z+2t+3x=14
% t+2x+3y=12

% x+  2y+3z+0*t=14
% 0*x+y+ 2z+3t =20
% 3x+0*y+z+ 2t =14
% 2x+3y+0*z+t  =12

A=[1 2 3 0; 0 1 2 3; 3 0 1 2; 2 3 0 1]
D=det(A)
Ay=[1 2 3 0; 14 20 14 12; 3 0 1 2; 2 3 0 1]
Dy=det(Ay)
y=Dy/D
% 2