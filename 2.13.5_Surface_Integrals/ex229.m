% Find the moment of inertia of the hemisphere 
% z=sqrt(a^2-x^2-y^2) relative to the axis Oz

syms a x y dx dy real;
z=sqrt(a^2-x^2-y^2)

dzx=diff(z,x)
dzy=diff(z,y)
dS=sqrt(1+dzx^2+dzy^2)*dx*dy
dS=simplify(dS)
% dx*dy*abs(a)*(-1/(- a^2 + x^2 + y^2))^(1/2)
dS=a*dx*dy/sqrt(a^2-x^2-y^2)

% Ioz = int int (S) (x^2+y^2)*dS = 
%   = int int (D) (x^2+y^2)*a/sqrt(a^2-x^2-y^2) *dx*dy

f=(x^2+y^2)*a/sqrt(a^2-x^2-y^2)
% Passing to polar coordinates
syms ro teta;
x1=ro*cos(teta)
y1=ro*sin(teta)
J=ro

f1=subs(f,[x y],[x1 y1])
f1=simplify(f1)
% (a*ro^2)/(a^2 - ro^2)^(1/2)

% x^2+y^2<=a^2 => 0<=ro<=a
Ioz=4*int(int(f1*J,ro,0,a),teta,0,pi/2)
% (4*pi*a^4)/3