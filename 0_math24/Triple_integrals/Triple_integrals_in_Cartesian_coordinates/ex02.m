% I = int int int (U) (1-x) dx dy dz;
% U: 3x+2y+z=6

% 0<=z<=6-3x-2y
% 0<=y<=3-3/2*x
% 0<=x<=2
syms x y z;
I=int(int(int((1-x),z,0,6-3*x-2*y),y,0,3-3/2*x),x,0,2)
% 3
