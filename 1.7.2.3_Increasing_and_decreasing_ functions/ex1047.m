syms x;
y=x-2*sin(x)
ezplot(y)
grid
dy=diff(y)
solve(dy)