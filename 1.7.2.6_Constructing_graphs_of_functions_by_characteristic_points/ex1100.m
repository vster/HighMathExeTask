syms x;
y=log(x)-log(x-1)

ezplot(y)
hold on

% 3
assume(x,'real')
s_x=solve(y)

xv=0
plot([xv xv],[-2 2],'r')
xv=1
plot([xv xv],[-2 2],'r')

% 4
k1=limit(y/x,x,inf)
b1=limit(y-k1*x,x,inf)
x1=-7:7
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