syms x;
y=16*x*(x-1)^2

ezplot(y,[-1 2])
hold on

s_x=solve(y)

% 5
dy=simplify(diff(y))
s_dx=solve(dy)
s_dy=subs(y,x,s_dx)
plot(double(s_dx), double(s_dy),'ro')

% 6
d2y=simplify(diff(y,2))
s_d2x=solve(d2y)
s_d2y=subs(y,x,s_d2x)
plot(double(s_d2x), double(s_d2y),'rx')

grid
hold off
