syms x;
y=(x-5)*exp(x)
ezplot(y)
grid
dy=diff(y)
solve(dy)