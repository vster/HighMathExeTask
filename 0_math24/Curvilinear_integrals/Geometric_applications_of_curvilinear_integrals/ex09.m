% Find the volume of the body formed by the rotation about the axis 
% Ox of the region R bounded by the curve
% y=2-sin(x) and lines x=0,x=2*pi,y=0.

% V=-pi*int_c(C)y^2*dx
%   =-pi*(int(OA)y^2*dx+int(AB)y^2*dx+int(BD)y^2*dx+int(DO)y^2*dx)

syms x
y=2-sin(x)

% OA
I1=int(0,x,0,2*pi)
% 0

% AB
I2=int(y^2,x,2*pi,2*pi)
% 0

% BD
I3=int(y^2,x,2*pi,0)
% -9*pi

% D0
I4=int(y^2,x,0,0)
% 0

V=-pi*(I1+I2+I3+I4)
% 9*pi^2