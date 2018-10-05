% Integrate equation
% y=y'*log(y')

% Put y'=p, then
% y=p*log(p)

syms p
y1=p*log(p)
dy1=diff(y1)
% log(p) + 1 = dy = p*dx
dx1=dy1/p
% (log(p) + 1)/p
x1=int(dx1)
% (log(p)*(log(p) + 2))/2

% / x=(log(p)*(log(p) + 2))/2+C
% \ y=p*log(p)