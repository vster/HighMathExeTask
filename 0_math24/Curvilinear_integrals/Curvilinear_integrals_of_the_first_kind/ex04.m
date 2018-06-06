% Compute the integral
% int (C) ds
% where C is a straight line segment from point O (0,0) to A (1,2)

syms x real;
% OA
y=2*x
% int (C) F(x,y) *ds = int (a:b) F(x,f(x))*sqrt(1+diff(x)^2) *dx
I = int(sqrt(1+diff(y)^2),x,0,1)
% 5^(1/2)