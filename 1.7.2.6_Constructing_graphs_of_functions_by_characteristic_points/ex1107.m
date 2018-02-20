syms x;
y=log(x+sqrt(x^2+1))

ezplot(y)
hold on

s_x=solve(y)

% 5
dy=simplify(diff(y))
s_dx=solve(dy)
s_dy=subs(y,x,s_dx)

% 6
d2y=simplify(diff(y,2))
s_d2x=solve(d2y)
s_d2y=subs(y,x,s_d2x)

grid
hold off