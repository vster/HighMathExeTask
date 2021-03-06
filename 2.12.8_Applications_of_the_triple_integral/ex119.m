% Find the coordinates of the center of gravity 
% of a body bounded by surfaces
% 2x+3y-12=0, x=0, y=0, z=0, z=0.5y^2

syms x y z;
V=int(int(int(1,z,0,0.5*y^2),y,0,(12-2*x)/3),x,0,6)
% 16
xm=1/V*int(int(int(x,z,0,0.5*y^2),y,0,(12-2*x)/3),x,0,6)
% 6/5
ym=1/V*int(int(int(y,z,0,0.5*y^2),y,0,(12-2*x)/3),x,0,6)
% 12/5
zm=1/V*int(int(int(z,z,0,0.5*y^2),y,0,(12-2*x)/3),x,0,6)
% 8/5