syms x;
y=x^3/(x-2)^2

ezplot(y,[-10 10])
hold on

s_x=solve(y)

xv1=2
plot([xv1 xv1],[-10 50],'r')

k1=limit(y/x,x,inf)
b1=limit(y-k1*x,x,inf)
x1=-10:10
y1=k1*x1+b1
plot(x1,y1,'g')

k2=limit(y/x,x,-inf)
b2=limit(y-k1*x,x,-inf)
x2=-10:10
y2=k2*x2+b2
plot(x2,y2,'g')

% 5
dy=simplify(diff(y))
s_dx=solve(dy)
s_dy=subs(y,x,s_dx)
plot(double(s_dx), double(s_dy),'ro')

% 6
d2y=simplify(diff(y,2))
s_d2x=solve(d2y)
s_d2y=subs(y,x,s_d2x)

grid
hold off
