% Integrate equation
% y'=atan(y/(y')^2)

% y=(y')^2*tan(y')
% Put y'=p, then
% y=p^2*tan(p)

syms p;
y1=p^2*tan(p)
dy1=diff(y1,p)
% dy=(2*p*tan(p) + p^2*(tan(p)^2 + 1))*dp = p*dx
% dx=(2*tan(p) + p*(tan(p)^2 + 1))*dp
x1=simplify(int(2*tan(p) + p*(tan(p)^2 + 1),p))
% log(tan(p)^2 + 1)/2 + p*tan(p)
% p*tan(p) - log(cos(p)) + C

% So
% / x=p*tan(p) - log(cos(p)) + C
% \ y=p^2*tan(p)
