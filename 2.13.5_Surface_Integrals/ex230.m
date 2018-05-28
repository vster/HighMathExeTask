% Calculate the coordinates of the center of gravity of a part of the plane 
% z=x, that is bounded by the planes x+y=1,y=0,x=0

syms x y dx dy real;
z=x;
dzx=diff(z,x)
dzy=diff(z,y)
dS=sqrt(1+dzx^2+dzy^2)
% 2^(1/2)

% S = int int (D) sqrt(1+diff(z,x)^2+diff(z,y)^2) dx*dy
S=int(int(dS,y,0,1-x),x,0,1)
% 2^(1/2)/2
% xm = 1/S int int (S) x dS
xm=1/S*int(int(x*dS,y,0,1-x),x,0,1)
% 1/3
% ym = 1/S int int (S) y dS
ym=1/S*int(int(y*dS,y,0,1-x),x,0,1)
% 1/3
% zm = 1/S int int (S) z dS
zm=1/S*int(int(z*dS,y,0,1-x),x,0,1)
% 1/3