syms x;
y=3*x^(1/3)-x

ezplot(y,[-1,10])
hold on

s_x=solve(y)

% 5
dy=simplify(diff(y))
s_dx=solve(dy)
s_dy=subs(y,x,s_dx)

% 6
d2y=simplify(diff(y,2))
s_d2x=solve(d2y)

grid
hold off