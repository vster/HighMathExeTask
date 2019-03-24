% Find image y'(t)+y(t)+int(0:t)y(tau)dtau
% if y0=1 and Y(p) -> y(t)

clear 
syms t p
syms y(t) Y(p)
y0=1

% y'(t) <-
D1Y(p)=p*Y(p)-y0
% p*Y(p) - 1

% int(0:t)y(tau)dtau <-
I1Y(p)=Y(p)/p
% Y(p)/p

% y'(t)+y(t)+int(0:t)y(tau)dtau <-
YT(p)=D1Y(p)+Y(p)+I1Y(p)
% Y(p) + p*Y(p) + Y(p)/p - 1