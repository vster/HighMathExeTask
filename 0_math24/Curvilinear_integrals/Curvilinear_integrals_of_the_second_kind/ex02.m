% Find the integral
% int (C) x*dy-y*dx
% along the curve C given by the equation y = x3, 
% from the point (0,0) to (2,8).

% int (C) P*dx+Q*dy = int (a:b) (P(x,f(x))+Q(x,f(x))*df/dx)*dx

syms x;
y=x^3
f=x*diff(y)-y
% 2*x^3
I=int(f,x,0,2)
% 8