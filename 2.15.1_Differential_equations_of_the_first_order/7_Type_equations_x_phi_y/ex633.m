% Integrate equation
% x=y'*(1+exp(y'))

% Put y'=p (dy=p*dx)
% x=p*(1+exp(p))

syms p
x1=p*(1+exp(p))
dx1=diff(x1)
% exp(p) + p*exp(p) + 1 = dx = dy/p
dy1=dx1*p
% p*(exp(p) + p*exp(p) + 1)
y1=int(dy1,p)
% exp(p) + p^2*exp(p) - p*exp(p) + p^2/2

% / x=p*(1+exp(p))
% \ y=exp(p) + p^2*exp(p) - p*exp(p) + p^2/2 + C
