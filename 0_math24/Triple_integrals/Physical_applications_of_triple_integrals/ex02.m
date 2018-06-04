% Determine the mass and coordinates of the center of gravity 
% of the unit cube with the density ro(x,y,z)=x+2y+3z

syms x y z real;
ro=x+2*y+3*z;
m=int(int(int(ro,z,0,1),y,0,1),x,0,1)
% 3
Mxy=int(int(int(z*ro,z,0,1),y,0,1),x,0,1)
% 7/4
Mxz=int(int(int(y*ro,z,0,1),y,0,1),x,0,1)
% 5/3
Myz=int(int(int(x*ro,z,0,1),y,0,1),x,0,1)
% 19/12

xm=Myz/m
% 19/36
ym=Mxz/m
% 5/9
zm=Mxy/m
% 7/12