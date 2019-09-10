% Find the arc length of the curve
% x=cos(t)^5,y=sin(t)^5 from x1=0 to t2=pi/2

% L = int (t1-t2) sqrt(diff(x)^2+diff(y)^2) dt
syms t real;
x=cos(t)^5
y=sin(t)^5

dx=diff(x,t)
dy=diff(y,t)

c=simplify(sqrt(dx^2+dy^2))

L=simplify(int(c,0,pi/2))
% Does not work

% Correct answer
% L=5/8*(2-log(2-sqrt(3))/sqrt(3))