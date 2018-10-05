% Integrate equation
% y=exp(y')*(y'-1)

% Put y'=p, then
% y=exp(p)*(p-1)

syms x y p;
y1=exp(p)*(p-1)
dy1=simplify(diff(y1))
% p*exp(p) = dy = p*dx
% dx=exp(p)
x1=int(exp(p),p)
% exp(p)+C

% / x=exp(p)+C
% \ y=exp(p)*(p-1)

syms C
p1=log(x-C)
y2=subs(y1,p,p1)
% (log(x - C) - 1)*(x - C)