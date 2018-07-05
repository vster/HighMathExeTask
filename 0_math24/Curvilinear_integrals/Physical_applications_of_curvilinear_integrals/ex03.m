% Find the center of mass of a wire having the shape of a cardioid r = 1 + cos(teta)
% with a density ro=1.

syms teta;
r=1+cos(teta)
ro=1
x=r*cos(teta)
y=r*sin(teta)

m=int(ro*sqrt(r^2+diff(r,teta)^2),teta,0,pi)
% 4

% My=int(C)F(x,y)*ds=
%  =
%  int(alfa:beta)F(r*cos(teta),r*sin(teta))*sqrt(r^2+diff(r,teta)^2)*d_teta

% Obviously, by virtue of symmetry, 
% ym=0

fy=x*sqrt(r^2+diff(r,teta)^2)
fy=simplify(fy)
% 2^(1/2)*cos(teta)*(cos(teta) + 1)^(3/2)
syms z;
fy1=subs(fy,teta,2*z)
% 2^(1/2)*cos(2*z)*(cos(2*z) + 1)^(3/2)
fy1=2^(1/2)*cos(2*z)*(2*cos(z)^2)^(3/2)
fy1=simplify(fy1)
% 4*cos(2*z)*(cos(z)^2)^(3/2)
fy1=4*cos(2*z)*cos(z)^3
% 4*cos(2*z)*cos(z)^3

% d_teta=2*dz
My=2*int(fy1,z,0,pi/2)
% 16/5
xm=My/m
% 4/5

% Consequently, the coordinates of the center of mass of the cardioid are equal
% [4/5,0]

