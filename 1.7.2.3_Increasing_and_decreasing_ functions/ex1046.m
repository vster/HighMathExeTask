syms x;
y=x*(1+sqrt(x))
ezplot(y)
dy=diff(y)
solve(dy)