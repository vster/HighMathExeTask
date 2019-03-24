% Find image F(t)=y'''(t)-y''(t)+2*y'(t)-2*y(t)
% if y0=0, dy0=1, d2y0=2, y(t) <- Y(p)

clear
syms t p real
syms y(t) Y(p)
% y(t) <- Y(p)
y0=0
dy0=1
d2y0=2

% y'(t) <-
D1Y(p)=p*Y(p)-y0
% p*Y(p)

% y"(t) <-
D2Y(p)=p^2*Y(p)-p*y0-dy0
% p^2*Y(p) - 1

% y'''(t) <-
D3Y(p)=p^3*Y(p)-p^2*y0-p*dy0-d2y0
% p^3*Y(p) - p - 2

% F(t) <-
D3Y-D2Y+2*D1Y-2*Y
% 2*p*Y(p) - 2*Y(p) - p - p^2*Y(p) + p^3*Y(p) - 1
