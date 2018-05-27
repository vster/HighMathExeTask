% Calculate the arc length of a curve
% y=x^2/2, 0<=x<=1

% L = int (a-b) sqrt(1+diff(y)^2) dx
syms x;
y=x^2/2

dy=diff(y)
% x
c=sqrt(1+dy^2)
% (x^2 + 1)^(1/2)
L=int(c,x,0,1)
% log(2^(1/2) + 1)/2 + 2^(1/2)/2