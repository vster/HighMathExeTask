% Find y"(t)-y'(t)-y(t)
% if y(0)=y'(0)=0
% and Y(p) -> y(t)

clear
syms t p real
syms y(t) Y(p)
% y(t) <- Y(p)
y0=0
dy0=0

% y'(t) <-
Y1(p)=p*Y(p)-y0
% p*Y(p)

% y"(t) <-
Y2(p)=p^2*Y(p)-p*y0-dy0
% p^2*Y(p)

% y"(t)-y'(t)-y(t) <-
Y2(p)-Y1(p)-Y(p)
% p^2*Y(p) - p*Y(p) - Y(p)