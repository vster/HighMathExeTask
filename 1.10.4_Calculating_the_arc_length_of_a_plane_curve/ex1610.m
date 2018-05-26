% Find the arc length of the curve
% y^2=x^3 from x=0 to x=1

syms x y;
f=y^2-x^3

% ezplot(f)

% L = int (a-b) sqrt(1+diff(y)^2) dx
dy=diff(x^(3/2))
L=int(sqrt(1+dy^2),0,1)
% (13*13^(1/2))/27 - 8/27