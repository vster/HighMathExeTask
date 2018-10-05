% Integrate equation
% y*(1+y'^2)^(1/2)=y'

% y=y'/(1+y'^2)^(1/2)

% Put y'=p, then
% y=p/(1+p^2)^(1/2)

syms x y p;
y1=p/(1+p^2)^(1/2)
dy1=simplify(diff(y1))
% 1/(p^2 + 1)^(3/2) = dy = p*dx
dx1=1/(p*(p^2 + 1)^(3/2))
x1=simplify(int(dx1,p))
pretty(x1)

% / x=-(atanh((p^2 + 1)^(1/2)) + p^2*atanh((p^2 + 1)^(1/2)) - (p^2 +
%       1)^(1/2))/(p^2 + 1)+C
% \ y=p/(1+p^2)^(1/2)