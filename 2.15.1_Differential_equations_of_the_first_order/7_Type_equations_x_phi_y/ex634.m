% Integrate equation
% x=exp(2*y')*(2*y'2-2*y'+1)

% Put y'=p (dy=p*dx)
% x=exp(2*p)*(2*p^2-2*p+1)

syms p
x1=exp(2*p)*(2*p^2-2*p+1)
dx1=simplify(diff(x1))
% 4*p^2*exp(2*p) = dx = dy/p
dy1=dx1*p
% 4*p^3*exp(2*p)
y1=simplify(int(dy1))
% (exp(2*p)*(8*p^3 - 12*p^2 + 12*p - 6))/4

% / x=exp(2*p)*(2*p^2-2*p+1)
% \ y=(exp(2*p)*(2*p^3 - 3*p^2 + 4*p - 3/2))+C