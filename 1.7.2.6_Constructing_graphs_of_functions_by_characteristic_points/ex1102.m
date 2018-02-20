syms x;
y=x^2/(x^2-4)

% 1
assume(x,'real')
assume(x~=2 & x~=-2)

ezplot(y)
hold on

% 3
s_x=solve(y)

%4
xv1=-2
yv1=limit(y,x,xv1,'left')
xv2=2
yv2=limit(y,x,xv2,'right')

plot([xv1 xv1],[-5 5],'r')
plot([xv2 xv2],[-5 5],'r')

k1=limit(y/x,x,inf)
b1=limit(y-k1*x,x,inf)
x1=-7:7
y1=k1*x1+b1
plot(x1,y1,'g')

% 5
dy=simplify(diff(y))
s_dx=solve(dy)
s_dy=subs(y,x,s_dx)
plot(double(s_dx), double(s_dy),'ro')

% 6
d2y=simplify(diff(y,2))
assume(s_d2x,'real')
s_d2x=solve(d2y)
s_d2y=subs(y,x,s_d2x)
plot(double(s_d2x), double(s_d2y),'rx')

grid
hold off
