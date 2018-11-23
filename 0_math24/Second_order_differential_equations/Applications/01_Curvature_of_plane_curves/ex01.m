% Determine the radius of curvature of a line.

syms a b x real
y=a*x+b

k=abs(diff(y,x,2))/(1+diff(y,x)^2)^(3/2)
% 0
R=1/k
% Inf