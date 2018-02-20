syms x;
y=exp(2*x-x^2);

ezplot(y)
hold on

s_x=solve(y)

k1=limit(y/x,x,inf)
b1=limit(y-k1*x,x,inf)
x1=-5:5
y1=k1*x1+b1
plot(x1,y1,'g')

% 5
dy=simplify(diff(y))
s_dx=solve(dy)
s_dy=subs(y,x,s_dx)
plot(double(s_dx), double(s_dy),'ro')

% 6
d2y=simplify(diff(y,2))
s_d2x=solve(d2y)
s_d2y=subs(y,x,s_d2x)
plot(double(s_d2x), double(s_d2y),'ro')

grid
hold off