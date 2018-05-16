% Find the moment of inertia of the cube
% 0<=x<=a, 0<=y<=a, 0<=z<=a
% with respect to its edge

syms x y z a;

Ix=int(int(int(y^2+z^2,z,0,a),y,0,a),x,0,a)
% (2*a^5)/3
