% Find the coordinates of the center of gravity 
% of a body bounded by surfaces
% x+y=1, z=x^2+y^2, x=0, y=0, z=0

syms x y z;
V=int(int(int(1,z,0,x^2+y^2),y,0,1-x),x,0,1)
% 1/6
xm=1/V*int(int(int(x,z,0,x^2+y^2),y,0,1-x),x,0,1)
% 2/5
ym=1/V*int(int(int(y,z,0,x^2+y^2),y,0,1-x),x,0,1)
% 2/5
zm=1/V*int(int(int(z,z,0,x^2+y^2),y,0,1-x),x,0,1)
% 7/30

