% Find the integral 
% int (C) x^2*y *ds
% along the line segment y = x from the origin to the point (2,2)

% int (C) F(x,y) *ds = int (a:b) F(x,f(x))*sqrt(1+diff(x)^2) dx

syms x real;
I = int(x^2*x*sqrt(1+diff(x)^2),x,0,2)
% 4*2^(1/2)