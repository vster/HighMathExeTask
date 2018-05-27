% Calculate the arc length of a curve
% x=t^3/3-t, y=t^2+2, 0<=t<=3

syms t;
x=t^3/3-t
y=t^2+2

ezplot(x,y)

% L = int (t1-t2) sqrt(diff(x)^2+diff(y)^2) dt
dx=diff(x)
dy=diff(y)

c1=dx^2+dy^2
c1=expand(c1)
c1=factor(c1)
% c=sqrt(c1)
c=t^2 + 1
pretty(c)

L=int(c,0,3)
% 12