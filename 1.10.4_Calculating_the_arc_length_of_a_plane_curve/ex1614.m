% Calculate the arc length of a curve
% y=2/5*x*x^(1/4)-2/3*x^(3/4)
% between points of intersection with the axis Ox

% L = int (a-b) sqrt(1+diff(y)^2) dx
syms x;
y=2/5*x*x^(1/4)-2/3*x^(3/4)

ezplot(y)

slv=solve(y==0)

% 0 25/9

dy=diff(y)
% x^(1/4)/2 - 1/(2*x^(1/4))
c1=1+dy^2
c1=factor(c1)
c1=simplify(c1)
% (x^(1/2) + 1)^2/(4*x^(1/2))

% c=sqrt(c1)
c=(sqrt(x)+1)/(2*x^(1/4))
L=int(c,x,0,25/9)
% (20*15^(1/2))/27