% y-3z+4t=-5
% x-2z+3t=-4
% 3x+2y-5t=12
% 4x+3y-5z=5

A=[0 1 -3 4; 1 0 -2 3; 3 2 0 -5; 4 3 -5 0]
B=[-5; -4; 12; 5]

slv=A^(-1)*B