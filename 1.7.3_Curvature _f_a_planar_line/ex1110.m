syms x;
y=-x^3
x1=1/2

ezplot(y)
grid

dy=diff(y)
d2y=diff(y,2)

dy1=subs(dy,x,x1)
d2y1=subs(d2y,x,x1)

k=abs(d2y1/(1+dy1^2)^(3/2))