% Find the volume of a tetrahedron bounded by planes passing 
% through the points A (1,0,0), B (0,2,0), C (0,0,3), 
% and the coordinate planes Oxy, Oxz, Oyz

% AB: y=2-2x
% 0<=x<=1, 0<=y<=2-2*x

% Plane ABC
% x/1+y/2+z/3=1 => z=3-3*x-3/2*y
% 0<=z<=3-3*x-3/2*y

syms x y z real;
V=int(int(int(1,z,0,3-3*x-3/2*y),y,0,2-2*x),x,0,1)
% 1