% x-3y+5z-7t=12
% 3x-5y+7z-t=0
% 5x-7y+z-3t=4
% 7x-y+3z-5t=16

A=[1 -3 5 -7; 3 -5 7 -1; 5 -7 1 -3; 7 -1 3 -5]
B=[12; 0; 4; 16]

slv=A^(-1)*B
% [1 1 0 -2]