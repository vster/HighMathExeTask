% Integrate equation
% x=2*y'+3*y'2

% Put y'=p (dy=p*dx)
% x=2*p+3*p^2

syms p
x1=2*p+3*p^2
dx1=diff(x1)
% 6*p + 2 = dx = dy/p
dy1=6*p^2+2*p
y1=int(dy1,p)
% p^2*(2*p + 1)

% / x=2*p+3*p^2
% \ y=p^2*(2*p + 1)+C