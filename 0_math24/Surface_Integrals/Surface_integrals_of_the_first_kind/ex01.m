% Calculate the surface integral 
% int_int(S)(x+y+z)*dS, where S is the part of the plane x+2*y+4*z=4,
% lying in the first octant (x>=0, y>=0, z>=0).

syms x y z real;
z1=1-x/4-y/2
f1=x+y+z

% int_int(S)f(x,y,z)*dS=int_int(D)f(x,y,z(x,y))*sqrt(1+diff(z,x)^2+diff(z,y)^2)*dx*dy
f1=subs(f1,z,z1)
% (3*x)/4 + y/2 + 1
dS=sqrt(1+diff(z1,x)^2+diff(z1,y)^2)
% 21^(1/2)/4
f2=f1*dS
% (21^(1/2)*((3*x)/4 + y/2 + 1))/4

% 0<x<4-2*y
% 0<y<2
I=int(int(f2,x,0,4-2*y),y,0,2)
% (7*21^(1/2))/3

