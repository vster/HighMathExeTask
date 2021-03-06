% Find the coordinates of the center of gravity 
% of the prismatic body bounded by the planes
% x=0, z=0, y=1, y=3, x+2z=3

syms x y z;
V=int(int(int(1,z,0,(3-x)/2),y,1,3),x,0,3)
% 9/2
xm=1/V*int(int(int(x,z,0,(3-x)/2),y,1,3),x,0,3)
% 1
ym=1/V*int(int(int(y,z,0,(3-x)/2),y,1,3),x,0,3)
% 2
zm=1/V*int(int(int(z,z,0,(3-x)/2),y,1,3),x,0,3)
% 1/2