% Integrate equation
% x=2*(log(y')-y')

% Put y'=p (dy=p*dx)
% x=2*(log(p)-p)

syms p
x1=2*(log(p)-p)
dx1=diff(x1,p)
% (2/p - 2)*dp = dx = dy/p
dy1=2-2*p
y1=int(dy1,p)
% -p*(p - 2)

% / x=2*(log(p)-p)
% \ y=p*(2 - p) + C