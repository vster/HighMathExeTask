% Find the moment of inertia of the paraboloid 
% z=0.5*(x^2+y^2) with respect to the axis Oz
% if 0<=z<=1

syms x y dx dy real;
z=0.5*(x^2+y^2)

dzx=diff(z,x)
dzy=diff(z,y)
dS=sqrt(1+dzx^2+dzy^2)*dx*dy
% (x^2 + y^2 + 1)^(1/2)*dx*dy

% Ioz = int int (S) (x^2+y^2)*dS = 
%   = int int (D) (x^2+y^2)*(x^2 + y^2 + 1)^(1/2)*dx*dy
f=(x^2+y^2)*(x^2 + y^2 + 1)^(1/2)

% Passing to polar coordinates
syms ro teta;
x1=ro*cos(teta)
y1=ro*sin(teta)
f1=subs(f,[x y],[x1 y1])
f1=simplify(f1)
% ro^2*(ro^2 + 1)^(1/2)

% 0.5*(x^2+y^2)<=1 => 0<=ro<=sqrt(2)
Ioz=int(int(f1*ro,ro,0,sqrt(2)),teta,0,2*pi)
% (4*pi*(6*3^(1/2) + 1))/15