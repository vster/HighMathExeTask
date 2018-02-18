syms x;
y=log(x/(x-1))

ezplot(y)
hold on

% 3
assume(x,'real')
s_x=solve(y)

%4
xv1=0
yv1=limit(y,x,xv1,'left')
xv2=1
yv2=limit(y,x,xv2,'right')

xv1=0
plot([xv1 xv1],[-2 2],'r')
xv2=1
plot([xv2 xv2],[-2 2],'r')

k1=limit(y/x,x,inf)
b1=limit(y-k1*x,x,inf)
x1=-7:7
y1=k1*x1+b1
plot(x1,y1,'g')

grid
hold off


% 5
dy=simplify(diff(y))
s_dx=solve(dy)
s_dy=subs(y,x,s_dx)

% 6
d2y=simplify(diff(y,2))
s_d2x=solve(d2y)