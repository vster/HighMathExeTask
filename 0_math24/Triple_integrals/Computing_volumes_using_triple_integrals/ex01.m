% Find the volume of a cone of height H and the radius of the base R

syms x y H R real;
z1=H/R*sqrt(x^2+y^2)
z2=H

% V = int int int (U) dx dy dz
% V=int(int(int(1,z,H/R*sqrt(x^2+y^2),H),y,-sqrt(R^2-x^2),sqrt(R^2-x^2)),x,-R,R)

syms ro z phi H R real;
% 0<=phi<=2*pi
% 0<=ro<=R
% Ro<=z<=H

V=int(int(int(ro,z,(H/R)*ro,H),phi,0,2*pi),ro,0,R)
% (pi*H*R^2)/3