% Calculate the triple integral
% I= int int int (T) x^2 dx dy dz
% x^2+y^2+z^2<=R^2

syms ro phi teta R;
I=int(int(int(ro^4*sin(teta)^3*cos(phi)^2,ro,0,R),phi,0,2*pi),teta,0,pi)
% (4*pi*R^5)/15