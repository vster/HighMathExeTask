% Integrate equation
% x=y'*sin(y')+cos(y')

% Put y'=p (dy=p*dx), then
% x=p*sin(p)+cos(p)

syms x p
eq1=p*sin(p)+cos(p)
eq2=diff(eq1,p)
% p*cos(p)
% dx=p*cos(p)*dp
% dy/p=dx
% dy=p^2*cos(p)*dp
y=int(p^2*cos(p),p)
% y=sin(p)*(p^2 - 2) + 2*p*cos(p)+C

% / x=p*sin(p)+cos(p)
% \ y=sin(p)*(p^2 - 2) + 2*p*cos(p)+C