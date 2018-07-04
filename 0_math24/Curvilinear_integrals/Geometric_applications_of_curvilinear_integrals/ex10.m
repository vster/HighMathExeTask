% Find the volume of the ellipsoid formed by the rotation of the ellipse 
% with the semiaxes a and b about the axis Ox

syms t a b
x=a*cos(t)
y=b*sin(t)

% V=-pi*int(C)y^2*dx

V=-pi*int(y^2*diff(x,t),t,0,pi)
% (4*pi*a*b^2)/3

