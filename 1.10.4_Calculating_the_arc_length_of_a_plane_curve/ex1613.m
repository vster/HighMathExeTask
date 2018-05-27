% Calculate the arc length of a curve
% y=log(sin(x)), pi/3<=x<=pi/2

% L =  int (a-b) sqrt(1+diff(y)^2) dx
syms x;
y=log(sin(x))
dy=diff(y)
% cos(x)/sin(x)

c=simplify(sqrt(1+dy^2))
% (1/sin(x)^2)^(1/2)
c=1/sin(x)

L=int(c,x,pi/3,pi/2)
% log(3)/2