% Find the area of the region bounded by the hyperbola 
% y=1/x, Ox axis and vertical lines x = 1, x = 2.

syms x real;
y=1/x

% S=-int(C)y*dx=-int(AB)y*dx-int(BD)y*dx-int(DE)y*dx-int(EA)y*dx

% AB
I1=-int(0,x,1,2)
% 0

% BD
I2=-int(y,x,0,0)
% 0

% DE
I3=-int(1/x,x,2,1)
% log(2)

% EA
I4=-int(y,x,0,0)
% 0

I=I1+I2+I3+I4
% log(2)