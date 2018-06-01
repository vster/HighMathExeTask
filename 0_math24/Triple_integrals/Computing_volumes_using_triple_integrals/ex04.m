% Find the volume of a tetrahedron bounded by planes
% x+y+z=5,x=0,y=0,z=0

syms x y z real;

% x+y+z=5 => z=5-x-y

% if z=0, then 5-x-y=0 or y=5-x

V=int(int(int(1,z,0,5-x-y),y,0,5-x),x,0,5)
% 125/6