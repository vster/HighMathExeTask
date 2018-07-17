% Find the integral
% int_int(S)2*x*dy*dz
% where S is the inner surface of the sphere 
% x^2 + y^2 + z^2 = a^2.

syms a phi teta;
x=a*cos(phi)*sin(teta)
y=a*sin(phi)*sin(teta)
z=a*cos(teta)
% 0<=phi<=2*pi
% 0<=teta<=pi

F=[2*x 0 0]
P=2*x
Q=0
R=0

A = [    P           Q            R;      ...
      diff(x,phi)  diff(y,phi)  diff(z,phi); ...
      diff(x,teta) diff(y,teta) diff(z,teta) ]
  
det_A=det(A)
% -2*a^3*cos(phi)^2*sin(teta)^3

I=2*int(int(det_A,phi,0,2*pi),teta,0,pi)
% -(16*pi*a^3)/3