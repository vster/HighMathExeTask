% Find image F(t)=y(t)-2*y'(t)
% if y0=0
% y(t) <- Y(p)

clear
syms t p
syms y(t) Y(p)
% y(t) <- Y(p)
y0=0

% y'(t) <-
D1Y(p)=p*Y(p)-y0

% F(t) <-
Y(p)-2*D1Y(p)
% Y(p) - 2*p*Y(p)