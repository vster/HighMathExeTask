% Calculate the arc length of a curve
% y=1-log(cos(x)), 0<=x<=pi/6

syms x;
y=1-log(cos(x))

% ezplot(y)

% L = int (a-b) sqrt(1+diff(y)^2) dx
dy=diff(y)
c1=1+dy^2
c1=factor(c1)
c1=simplify(c1)
% c1=sqrt(c)

c=1/cos(x)
L=int(c,x,0,pi/6)
% log(3)/2