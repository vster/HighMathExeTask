% Integrate equation
% asin(x/y')=y'

% x=y'*sin(y')

% Put y'=p (dy=p*dx)
% x=p*sin(p)

syms p
x1=p*sin(p)
dx1=diff(x1)
% sin(p) + p*cos(p) = dx = dy/p
dy=p*sin(p)+p^2*cos(p)
y1=int(dy,p)
% p^2*sin(p) - sin(p) + p*cos(p)

% / x=p*sin(p)
% \ y=p^2*sin(p) - sin(p) + p*cos(p) + C