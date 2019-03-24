% Find image F(t)=y'(t)-int(0:t)y(tau)dtau
% if y0=0, y(t) <- Y(p)

clear
syms t p real
syms y(t) Y(p)
% y(t) <- Y(p)
y0=0

% y'(t) <-
D1Y(p)=p*Y(p)-y0
% p*Y(p)

% int(0:t)y(tau)dtau <-
I1Y(p)=Y(p)/p
% Y(p)/p

% F(t) <-
D1Y-I1Y
% p*Y(p) - Y(p)/p