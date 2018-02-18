syms x;
y=log(x)/sqrt(x)

%1
assume(x>0)

ezplot(y,[0 20])
hold on

% 3
s_x=solve(y)

xv1=0
yv1=limit(y,x,xv1,'right')

plot([xv1 xv1],[-2 2],'r')

k1=limit(y/x,x,inf)
b1=limit(y-k1*x,x,inf)
x1=-1:7
y1=k1*x1+b1
plot(x1,y1,'g')

% 5
dy=simplify(diff(y))
s_dx=solve(dy)
s_dy=subs(y,x,s_dx)

% 6
d2y=simplify(diff(y,2))
s_d2x=solve(d2y)

grid
hold off

