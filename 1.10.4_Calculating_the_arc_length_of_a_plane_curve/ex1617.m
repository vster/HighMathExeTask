% Calculate the arc length of a curve
% y=cosh(x), 0<=x<=1

syms x;
y=cosh(x)

% L = int (a-b) sqrt(1+diff(y)^2) dx
c=sqrt(1+diff(y)^2)
c=cosh(x)

L=int(c,x,0,1)
% (exp(-1)*(exp(2) - 1))/2
vpa(L)
% 1.175